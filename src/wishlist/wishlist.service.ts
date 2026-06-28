import { Injectable, ConflictException, NotFoundException } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { AddWishlistItemDto } from './dto';

@Injectable()
export class WishlistService {
  constructor(private prisma: PrismaService) {}

  async findAll(userId: number) {
    return this.prisma.wishlistItem.findMany({
      where: { userId },
      include: {
        product: {
          include: {
            variants: { where: { isDefault: true }, take: 1 },
            images: { where: { isPrimary: true }, take: 1 },
          },
        },
      },
      orderBy: { createdAt: 'desc' },
    });
  }

  async add(userId: number, dto: AddWishlistItemDto) {
    const existing = await this.prisma.wishlistItem.findFirst({
      where: { userId, productId: dto.productId },
    });
    if (existing) throw new ConflictException('Product already in wishlist');

    const product = await this.prisma.product.findUnique({ where: { id: dto.productId } });
    if (!product) throw new NotFoundException('Product not found');

    return this.prisma.wishlistItem.create({
      data: { userId, productId: dto.productId },
      include: {
        product: {
          include: {
            variants: { where: { isDefault: true }, take: 1 },
            images: { where: { isPrimary: true }, take: 1 },
          },
        },
      },
    });
  }

  async remove(userId: number, productId: number) {
    const item = await this.prisma.wishlistItem.findFirst({
      where: { userId, productId },
    });
    if (!item) throw new NotFoundException('Wishlist item not found');
    return this.prisma.wishlistItem.delete({ where: { id: item.id } });
  }

  async check(userId: number, productId: number) {
    const item = await this.prisma.wishlistItem.findFirst({
      where: { userId, productId },
    });
    return { inWishlist: !!item };
  }
}
