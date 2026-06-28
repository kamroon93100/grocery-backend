import { Injectable, NotFoundException } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { CreateVariantDto, UpdateVariantDto, VariantQueryDto } from './dto';

@Injectable()
export class VariantsService {
  constructor(private prisma: PrismaService) {}

  async findAll(query: VariantQueryDto) {
    const page = query.page || 1;
    const limit = query.limit || 20;
    const skip = (page - 1) * limit;

    const where: any = {};
    if (query.isActive !== undefined) where.isActive = query.isActive;

    const [items, total] = await Promise.all([
      this.prisma.productVariant.findMany({
        where,
        skip,
        take: limit,
        orderBy: { id: 'asc' },
      }),
      this.prisma.productVariant.count({ where }),
    ]);

    return { items, total, page, limit, totalPages: Math.ceil(total / limit) };
  }

  async findOne(id: number) {
    const variant = await this.prisma.productVariant.findUnique({
      where: { id },
      include: { product: true },
    });
    if (!variant) throw new NotFoundException('Variant not found');
    return variant;
  }

  async findByProductId(productId: number) {
    return this.prisma.productVariant.findMany({
      where: { productId },
      orderBy: { isDefault: 'desc' },
    });
  }

  async create(dto: CreateVariantDto) {
    return this.prisma.productVariant.create({
      data: {
        csvId: `var_${Date.now()}`,
        productId: dto.productId,
        sku: dto.sku,
        variant: dto.variant,
        unit: dto.unit,
        mrp: dto.mrp,
        sellingPrice: dto.sellingPrice,
        discountPercent: dto.discountPercent,
        stock: dto.stock,
        weight: dto.weight,
        isDefault: dto.isDefault ?? false,
        isActive: dto.isActive ?? true,
      },
    });
  }

  async update(id: number, dto: UpdateVariantDto) {
    await this.findOne(id);
    return this.prisma.productVariant.update({ where: { id }, data: dto });
  }

  async remove(id: number) {
    await this.findOne(id);
    return this.prisma.productVariant.delete({ where: { id } });
  }

  async setDefault(id: number) {
    const variant = await this.findOne(id);
    await this.prisma.productVariant.updateMany({
      where: { productId: variant.productId, isDefault: true },
      data: { isDefault: false },
    });
    return this.prisma.productVariant.update({
      where: { id },
      data: { isDefault: true },
    });
  }
}
