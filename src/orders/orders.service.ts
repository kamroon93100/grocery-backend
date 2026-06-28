import { Injectable, NotFoundException, BadRequestException, ForbiddenException } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { CreateOrderDto, UpdateOrderStatusDto, OrderQueryDto } from './dto';
import { OrderStatus } from '@prisma/client';

const ALLOWED_TRANSITIONS: Record<OrderStatus, OrderStatus[]> = {
  pending: ['confirmed', 'cancelled'],
  confirmed: ['preparing', 'cancelled'],
  preparing: ['ready', 'cancelled'],
  ready: ['picked_up', 'cancelled'],
  picked_up: ['out_for_delivery'],
  out_for_delivery: ['delivered'],
  delivered: ['returned'],
  cancelled: [],
  returned: [],
};

@Injectable()
export class OrdersService {
  constructor(private prisma: PrismaService) {}

  private generateOrderNumber(): string {
    const prefix = 'KS';
    const timestamp = Date.now().toString(36).toUpperCase();
    const random = Math.random().toString(36).substring(2, 6).toUpperCase();
    return `${prefix}${timestamp}${random}`;
  }

  async findAll(userId: number, query: OrderQueryDto, isAdmin = false) {
    const page = query.page || 1;
    const limit = query.limit || 10;
    const skip = (page - 1) * limit;

    const where: any = {};
    if (!isAdmin) where.userId = userId;
    if (query.status) where.status = query.status;

    const [items, total] = await Promise.all([
      this.prisma.order.findMany({
        where,
        include: { items: true },
        orderBy: { createdAt: 'desc' },
        skip,
        take: limit,
      }),
      this.prisma.order.count({ where }),
    ]);
    return { items, total, page, limit, totalPages: Math.ceil(total / limit) };
  }

  async findOne(id: number, userId?: number) {
    const where: any = { id };
    if (userId) where.userId = userId;

    const order = await this.prisma.order.findFirst({
      where,
      include: { items: true },
    });
    if (!order) throw new NotFoundException('Order not found');
    return order;
  }

  async create(userId: number, dto: CreateOrderDto) {
    const orderNumber = this.generateOrderNumber();
    const deliveryOtp = Math.floor(100000 + Math.random() * 900000).toString();

    const order = await this.prisma.order.create({
      data: {
        orderNumber,
        userId,
        status: 'pending',
        paymentMethod: dto.paymentMethod || 'cod',
        subtotal: dto.subtotal,
        discount: dto.discount || 0,
        deliveryFee: dto.deliveryFee || 0,
        tax: dto.tax || 0,
        totalAmount: dto.totalAmount,
        couponCode: dto.couponCode,
        couponDiscount: dto.couponDiscount || 0,
        deliveryAddress: dto.deliveryAddress || {},
        notes: dto.notes || '',
        otp: deliveryOtp,
        items: {
          create: dto.items.map((item) => ({
            productId: item.productId,
            variantId: item.variantId,
            productName: item.productName,
            productImage: item.productImage,
            variantLabel: item.variantLabel,
            price: item.price,
            quantity: item.quantity,
            subtotal: item.price * item.quantity,
          })),
        },
      },
      include: { items: true },
    });

    await this.prisma.cartItem.deleteMany({ where: { userId } });

    return order;
  }

  async updateStatus(id: number, dto: UpdateOrderStatusDto, actorRole: string) {
    const order = await this.prisma.order.findUnique({ where: { id } });
    if (!order) throw new NotFoundException('Order not found');

    const allowed = ALLOWED_TRANSITIONS[order.status as OrderStatus];
    if (!allowed.includes(dto.status)) {
      throw new BadRequestException(
        `Cannot transition from ${order.status} to ${dto.status}`,
      );
    }

    const updateData: any = { status: dto.status };
    if (dto.status === 'cancelled') {
      updateData.cancelledAt = new Date();
      updateData.cancelReason = dto.cancelReason || '';
    }
    if (dto.status === 'delivered') {
      updateData.deliveredAt = new Date();
    }

    return this.prisma.order.update({
      where: { id },
      data: updateData,
      include: { items: true },
    });
  }

  async assignDeliveryPartner(orderId: number, deliveryPartnerId: number) {
    const order = await this.prisma.order.findUnique({ where: { id: orderId } });
    if (!order) throw new NotFoundException('Order not found');

    return this.prisma.order.update({
      where: { id: orderId },
      data: { deliveryPartnerId, status: 'picked_up' },
    });
  }

  async cancel(id: number, userId: number) {
    return this.updateStatus(id, { status: 'cancelled', cancelReason: 'Cancelled by user' }, 'customer');
  }

  async getOrderStats() {
    const [totalOrders, totalRevenue, statusCounts] = await Promise.all([
      this.prisma.order.count(),
      this.prisma.order.aggregate({ _sum: { totalAmount: true } }),
      this.prisma.order.groupBy({ by: ['status'], _count: true }),
    ]);
    return {
      totalOrders,
      totalRevenue: totalRevenue._sum.totalAmount || 0,
      statusCounts: statusCounts.reduce((acc, s) => ({ ...acc, [s.status]: s._count }), {}),
    };
  }
}
