import { Injectable, NotFoundException, BadRequestException } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { ValidateCouponDto } from './dto';

@Injectable()
export class CouponsService {
  constructor(private prisma: PrismaService) {}

  async validate(dto: ValidateCouponDto) {
    const coupon = await this.prisma.coupon.findUnique({ where: { code: dto.code.toUpperCase() } });
    if (!coupon) throw new NotFoundException('Coupon not found');
    if (!coupon.isActive) throw new BadRequestException('Coupon is inactive');
    if (coupon.expiresAt && new Date() > coupon.expiresAt) throw new BadRequestException('Coupon has expired');
    if (coupon.usageLimit && coupon.usedCount >= coupon.usageLimit) throw new BadRequestException('Coupon usage limit reached');

    if (dto.orderValue < Number(coupon.minOrderValue)) {
      throw new BadRequestException(
        `Minimum order value of ${coupon.minOrderValue} required`,
      );
    }

    let discount = 0;
    if (coupon.type === 'percentage') {
      discount = (dto.orderValue * Number(coupon.value)) / 100;
      if (coupon.maxDiscount && discount > Number(coupon.maxDiscount)) {
        discount = Number(coupon.maxDiscount);
      }
    } else {
      discount = Number(coupon.value);
    }

    return {
      valid: true,
      code: coupon.code,
      type: coupon.type,
      discount: Math.round(discount * 100) / 100,
      description: coupon.description,
    };
  }

  async findAll() {
    return this.prisma.coupon.findMany({ orderBy: { createdAt: 'desc' } });
  }

  async findOne(id: number) {
    const coupon = await this.prisma.coupon.findUnique({ where: { id } });
    if (!coupon) throw new NotFoundException('Coupon not found');
    return coupon;
  }

  async findByCode(code: string) {
    const coupon = await this.prisma.coupon.findUnique({ where: { code: code.toUpperCase() } });
    if (!coupon) throw new NotFoundException('Coupon not found');
    return coupon;
  }

  async incrementUsage(code: string) {
    return this.prisma.coupon.update({
      where: { code },
      data: { usedCount: { increment: 1 } },
    });
  }
}
