import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { CreateNotificationDto } from './dto';

@Injectable()
export class NotificationsService {
  constructor(private prisma: PrismaService) {}

  async findAll(userId: number, page = 1, limit = 20) {
    const skip = (page - 1) * limit;
    const [items, total, unreadCount] = await Promise.all([
      this.prisma.notification.findMany({
        where: { userId },
        orderBy: { createdAt: 'desc' },
        skip,
        take: limit,
      }),
      this.prisma.notification.count({ where: { userId } }),
      this.prisma.notification.count({ where: { userId, isRead: false } }),
    ]);
    return { items, total, page, limit, totalPages: Math.ceil(total / limit), unreadCount };
  }

  async markAsRead(id: number, userId: number) {
    return this.prisma.notification.updateMany({
      where: { id, userId },
      data: { isRead: true },
    });
  }

  async markAllAsRead(userId: number) {
    return this.prisma.notification.updateMany({
      where: { userId, isRead: false },
      data: { isRead: true },
    });
  }

  async create(userId: number, dto: CreateNotificationDto) {
    return this.prisma.notification.create({
      data: {
        userId,
        title: dto.title,
        body: dto.body,
        type: dto.type || 'general',
        data: dto.data ?? {},
        imageUrl: dto.imageUrl,
      },
    });
  }

  async delete(id: number, userId: number) {
    return this.prisma.notification.deleteMany({ where: { id, userId } });
  }
}
