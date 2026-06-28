import { Injectable, NotFoundException } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { CreateTopPickDto, UpdateTopPickDto, TopPickQueryDto } from './dto';

@Injectable()
export class TopPicksService {
  constructor(private prisma: PrismaService) {}

  async findAll(query: TopPickQueryDto) {
    const page = query.page || 1;
    const limit = query.limit || 20;
    const skip = (page - 1) * limit;

    const where: any = {};
    if (query.sectionSlug) where.sectionSlug = query.sectionSlug;

    const [items, total] = await Promise.all([
      this.prisma.topPick.findMany({
        where,
        skip,
        take: limit,
        orderBy: { sortOrder: 'asc' },
        include: {
          product: {
            include: {
              variants: { where: { isDefault: true }, take: 1 },
              images: { take: 1 },
            },
          },
        },
      }),
      this.prisma.topPick.count({ where }),
    ]);

    return { items, total, page, limit, totalPages: Math.ceil(total / limit) };
  }

  async findBySection(sectionSlug: string) {
    const items = await this.prisma.topPick.findMany({
      where: { sectionSlug, isActive: true },
      orderBy: { sortOrder: 'asc' },
      include: {
        product: {
          include: {
            variants: { where: { isDefault: true }, take: 1 },
            images: { take: 1 },
          },
        },
      },
    });
    return items;
  }

  async findOne(id: number) {
    const item = await this.prisma.topPick.findUnique({
      where: { id },
      include: {
        product: {
          include: {
            variants: { where: { isDefault: true }, take: 1 },
            images: { take: 1 },
          },
        },
      },
    });
    if (!item) throw new NotFoundException('TopPick not found');
    return item;
  }

  async create(dto: CreateTopPickDto) {
    return this.prisma.topPick.create({
      data: {
        csvId: dto.csvId,
        sectionName: dto.sectionName,
        sectionSlug: dto.sectionSlug,
        productId: dto.productId,
        sortOrder: dto.sortOrder ?? 0,
        isActive: dto.isActive ?? true,
      },
    });
  }

  async update(id: number, dto: UpdateTopPickDto) {
    await this.findOne(id);
    return this.prisma.topPick.update({ where: { id }, data: dto });
  }

  async remove(id: number) {
    await this.findOne(id);
    return this.prisma.topPick.delete({ where: { id } });
  }
}
