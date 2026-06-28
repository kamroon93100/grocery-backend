import { Injectable, BadRequestException, UnauthorizedException, ConflictException } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
import * as bcrypt from 'bcrypt';
import { PrismaService } from '../prisma/prisma.service';
import { RegisterDto, LoginDto, SendOtpDto, VerifyOtpDto } from './dto';

@Injectable()
export class AuthService {
  constructor(
    private prisma: PrismaService,
    private jwtService: JwtService,
  ) {}

  private generateOtp(): string {
    return Math.floor(100000 + Math.random() * 900000).toString();
  }

  private generateTokens(user: { id: number; email: string; role: string }) {
    const payload = { sub: user.id, email: user.email, role: user.role };
    const accessToken = this.jwtService.sign(payload, { expiresIn: '1d' });
    const refreshToken = this.jwtService.sign(payload, { expiresIn: '7d' });
    return { accessToken, refreshToken };
  }

  async register(dto: RegisterDto) {
    const existing = await this.prisma.user.findUnique({ where: { email: dto.email } });
    if (existing) throw new ConflictException('Email already registered');

    const hashedPassword = await bcrypt.hash(dto.password, 12);
    const user = await this.prisma.user.create({
      data: {
        name: dto.name,
        email: dto.email,
        password: hashedPassword,
        phone: dto.phone,
      },
    });

    const tokens = this.generateTokens(user);
    await this.prisma.user.update({
      where: { id: user.id },
      data: { refreshToken: tokens.refreshToken },
    });

    return {
      ...tokens,
      user: { id: user.id, name: user.name, email: user.email, role: user.role, avatar: user.avatar },
    };
  }

  async login(dto: LoginDto) {
    const user = await this.prisma.user.findUnique({ where: { email: dto.email } });
    if (!user) throw new UnauthorizedException('Invalid credentials');
    if (!user.isActive) throw new UnauthorizedException('Account is deactivated');

    const isPasswordValid = await bcrypt.compare(dto.password, user.password);
    if (!isPasswordValid) throw new UnauthorizedException('Invalid credentials');

    const tokens = this.generateTokens(user);
    await this.prisma.user.update({
      where: { id: user.id },
      data: { refreshToken: tokens.refreshToken, lastLogin: new Date() },
    });

    return {
      ...tokens,
      user: { id: user.id, name: user.name, email: user.email, role: user.role, avatar: user.avatar },
    };
  }

  async refreshToken(refreshToken: string) {
    try {
      const payload = this.jwtService.verify(refreshToken);
      const user = await this.prisma.user.findUnique({ where: { id: payload.sub } });
      if (!user || user.refreshToken !== refreshToken) throw new UnauthorizedException('Invalid refresh token');

      const tokens = this.generateTokens(user);
      await this.prisma.user.update({
        where: { id: user.id },
        data: { refreshToken: tokens.refreshToken },
      });
      return tokens;
    } catch {
      throw new UnauthorizedException('Invalid refresh token');
    }
  }

  async sendOtp(dto: SendOtpDto) {
    const otp = this.generateOtp();
    const otpExpiry = new Date(Date.now() + 10 * 60 * 1000);

    let user = await this.prisma.user.findFirst({ where: { phone: dto.phone } });
    if (user) {
      await this.prisma.user.update({
        where: { id: user.id },
        data: { otp, otpExpiry },
      });
    } else {
      user = await this.prisma.user.create({
        data: {
          name: `User ${dto.phone.slice(-4)}`,
          email: `${dto.phone}@placeholder.com`,
          password: await bcrypt.hash(otp, 12),
          phone: dto.phone,
          otp,
          otpExpiry,
        },
      });
    }

    console.log(`OTP for ${dto.phone}: ${otp}`);
    return { message: 'OTP sent successfully', otp };
  }

  async verifyOtp(dto: VerifyOtpDto) {
    const user = await this.prisma.user.findFirst({
      where: {
        phone: dto.phone,
        otp: dto.otp,
        otpExpiry: { gte: new Date() },
      },
    });
    if (!user) throw new BadRequestException('Invalid or expired OTP');

    await this.prisma.user.update({
      where: { id: user.id },
      data: { otp: null, otpExpiry: null, isVerified: true, lastLogin: new Date() },
    });

    const tokens = this.generateTokens(user);
    await this.prisma.user.update({
      where: { id: user.id },
      data: { refreshToken: tokens.refreshToken },
    });

    return {
      ...tokens,
      user: { id: user.id, name: user.name, email: user.email, role: user.role, avatar: user.avatar },
    };
  }

  async logout(userId: number) {
    await this.prisma.user.update({
      where: { id: userId },
      data: { refreshToken: null, fcmToken: null },
    });
    return { message: 'Logged out successfully' };
  }
}
