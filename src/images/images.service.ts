import { Injectable, NotFoundException } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { CreateImageDto, UpdateImageDto, ImageQueryDto } from './dto';

@Injectable()
export class ImagesService {
  constructor(private prisma: PrismaService) {}

  async findAll(query: ImageQueryDto) {
    const page = query.page || 1;
    const limit = query.limit || 20;
    const skip = (page - 1) * limit;

    const where: any = {};
    if (query.isPrimary !== undefined) where.isPrimary = query.isPrimary;

    const [items, total] = await Promise.all([
      this.prisma.productImage.findMany({
        where,
        skip,
        take: limit,
        orderBy: { sortOrder: 'asc' },
      }),
      this.prisma.productImage.count({ where }),
    ]);

    return { items, total, page, limit, totalPages: Math.ceil(total / limit) };
  }

  async findOne(id: number) {
    const image = await this.prisma.productImage.findUnique({
      where: { id },
      include: { product: true, variant: true },
    });
    if (!image) throw new NotFoundException('Image not found');
    return image;
  }

  async findByProductId(productId: number) {
    return this.prisma.productImage.findMany({
      where: { productId },
      orderBy: { sortOrder: 'asc' },
    });
  }

  async create(dto: CreateImageDto) {
    return this.prisma.productImage.create({
      data: {
        csvId: `img_${Date.now()}`,
        productId: dto.productId,
        variantId: dto.variantId,
        image: dto.image,
        thumbnail: dto.thumbnail,
        altText: dto.altText,
        sortOrder: dto.sortOrder ?? 0,
        isPrimary: dto.isPrimary ?? false,
      },
    });
  }

  async update(id: number, dto: UpdateImageDto) {
    await this.findOne(id);
    return this.prisma.productImage.update({ where: { id }, data: dto });
  }

  async remove(id: number) {
    await this.findOne(id);
    return this.prisma.productImage.delete({ where: { id } });
  }

  async setPrimary(id: number) {
    const image = await this.findOne(id);
    await this.prisma.productImage.updateMany({
      where: { productId: image.productId, isPrimary: true },
      data: { isPrimary: false },
    });
    return this.prisma.productImage.update({
      where: { id },
      data: { isPrimary: true },
    });
  }
}
