import { Injectable, NotFoundException, BadRequestException } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { AddCartItemDto, UpdateCartItemDto } from './dto';

@Injectable()
export class CartService {
  constructor(private prisma: PrismaService) {}

  async getCart(userId: number) {
    const items = await this.prisma.cartItem.findMany({
      where: { userId },
      include: {
        product: {
          include: {
            variants: { where: { isDefault: true }, take: 1 },
            images: { where: { isPrimary: true }, take: 1 },
          },
        },
      },
      orderBy: { createdAt: 'asc' },
    });

    const total = items.reduce((sum, item) => {
      const price = item.product.variants[0]?.sellingPrice
        ? Number(item.product.variants[0].sellingPrice)
        : 0;
      return sum + price * item.quantity;
    }, 0);

    return { items, total: Math.round(total * 100) / 100, itemCount: items.length };
  }

  async addItem(userId: number, dto: AddCartItemDto) {
    const product = await this.prisma.product.findUnique({ where: { id: dto.productId } });
    if (!product) throw new NotFoundException('Product not found');

    const existing = await this.prisma.cartItem.findFirst({
      where: { userId, productId: dto.productId, variantId: dto.variantId ?? null },
    });

    if (existing) {
      return this.prisma.cartItem.update({
        where: { id: existing.id },
        data: { quantity: existing.quantity + (dto.quantity || 1) },
      });
    }

    return this.prisma.cartItem.create({
      data: {
        userId,
        productId: dto.productId,
        variantId: dto.variantId,
        quantity: dto.quantity || 1,
      },
    });
  }

  async updateItem(id: number, userId: number, dto: UpdateCartItemDto) {
    const item = await this.prisma.cartItem.findFirst({ where: { id, userId } });
    if (!item) throw new NotFoundException('Cart item not found');

    if (dto.quantity === 0) {
      return this.removeItem(id, userId);
    }

    return this.prisma.cartItem.update({
      where: { id },
      data: { quantity: dto.quantity },
    });
  }

  async removeItem(id: number, userId: number) {
    const item = await this.prisma.cartItem.findFirst({ where: { id, userId } });
    if (!item) throw new NotFoundException('Cart item not found');
    return this.prisma.cartItem.delete({ where: { id } });
  }

  async clearCart(userId: number) {
    await this.prisma.cartItem.deleteMany({ where: { userId } });
    return { message: 'Cart cleared' };
  }

  async getCartItemCount(userId: number) {
    const result = await this.prisma.cartItem.aggregate({
      where: { userId },
      _sum: { quantity: true },
    });
    return { count: result._sum.quantity || 0 };
  }
}
