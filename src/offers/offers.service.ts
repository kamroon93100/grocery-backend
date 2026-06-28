import { Injectable, NotFoundException } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { CreateOfferDto, UpdateOfferDto, OfferQueryDto } from './dto';

@Injectable()
export class OffersService {
  constructor(private prisma: PrismaService) {}

  async findAll(query: OfferQueryDto) {
    const page = query.page || 1;
    const limit = query.limit || 20;
    const skip = (page - 1) * limit;

    const where: any = {};
    if (query.isActive !== undefined) where.isActive = query.isActive;

    const [items, total] = await Promise.all([
      this.prisma.offer.findMany({
        where,
        skip,
        take: limit,
        orderBy: { id: 'asc' },
      }),
      this.prisma.offer.count({ where }),
    ]);

    return { items, total, page, limit, totalPages: Math.ceil(total / limit) };
  }

  async findOne(id: number) {
    const offer = await this.prisma.offer.findUnique({ where: { id } });
    if (!offer) throw new NotFoundException('Offer not found');
    return offer;
  }

  async findByCode(code: string) {
    const offer = await this.prisma.offer.findUnique({ where: { code } });
    if (!offer) throw new NotFoundException('Offer not found');
    return offer;
  }

  async findActive() {
    return this.prisma.offer.findMany({
      where: { isActive: true },
      orderBy: { id: 'asc' },
    });
  }

  async create(dto: CreateOfferDto) {
    return this.prisma.offer.create({
      data: {
        csvId: `off_${Date.now()}`,
        title: dto.title,
        type: dto.type,
        value: dto.value,
        minOrderValue: dto.minOrderValue,
        code: dto.code,
        isActive: dto.isActive ?? true,
      },
    });
  }

  async update(id: number, dto: UpdateOfferDto) {
    await this.findOne(id);
    return this.prisma.offer.update({ where: { id }, data: dto });
  }

  async remove(id: number) {
    await this.findOne(id);
    return this.prisma.offer.delete({ where: { id } });
  }
}
