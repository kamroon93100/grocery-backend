import { Injectable, NotFoundException, BadRequestException } from '@nestjs/common';
import * as bcrypt from 'bcrypt';
import { PrismaService } from '../prisma/prisma.service';
import { UpdateProfileDto, ChangePasswordDto } from './dto';

@Injectable()
export class UsersService {
  constructor(private prisma: PrismaService) {}

  async getProfile(id: number) {
    const user = await this.prisma.user.findUnique({
      where: { id },
      include: {
        _count: { select: { addresses: true, orders: true, reviews: true } },
      },
    });
    if (!user) throw new NotFoundException('User not found');
    const { password, refreshToken, otp, otpExpiry, ...profile } = user;
    return profile;
  }

  async updateProfile(id: number, dto: UpdateProfileDto) {
    const user = await this.prisma.user.findUnique({ where: { id } });
    if (!user) throw new NotFoundException('User not found');

    if (dto.email && dto.email !== user.email) {
      const existing = await this.prisma.user.findUnique({ where: { email: dto.email } });
      if (existing) throw new BadRequestException('Email already in use');
    }

    return this.prisma.user.update({
      where: { id },
      data: dto,
      select: { id: true, name: true, email: true, phone: true, avatar: true, role: true, isVerified: true },
    });
  }

  async changePassword(id: number, dto: ChangePasswordDto) {
    const user = await this.prisma.user.findUnique({ where: { id } });
    if (!user) throw new NotFoundException('User not found');

    const isMatch = await bcrypt.compare(dto.currentPassword, user.password);
    if (!isMatch) throw new BadRequestException('Current password is incorrect');

    const hashedPassword = await bcrypt.hash(dto.newPassword, 12);
    await this.prisma.user.update({
      where: { id },
      data: { password: hashedPassword },
    });
    return { message: 'Password changed successfully' };
  }

  async getWallet(id: number) {
    return this.prisma.walletTransaction.findMany({
      where: { userId: id },
      orderBy: { createdAt: 'desc' },
      take: 50,
    });
  }

  async getOrders(id: number, page = 1, limit = 10) {
    const skip = (page - 1) * limit;
    const [items, total] = await Promise.all([
      this.prisma.order.findMany({
        where: { userId: id },
        include: { items: true },
        orderBy: { createdAt: 'desc' },
        skip,
        take: limit,
      }),
      this.prisma.order.count({ where: { userId: id } }),
    ]);
    return { items, total, page, limit, totalPages: Math.ceil(total / limit) };
  }
}
