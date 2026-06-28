import { Injectable, NotFoundException } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { CreateSubcategoryDto, UpdateSubcategoryDto, SubcategoryQueryDto } from './dto';

@Injectable()
export class SubcategoriesService {
  constructor(private prisma: PrismaService) {}

  async findAll(query: SubcategoryQueryDto) {
    const page = query.page || 1;
    const limit = query.limit || 20;
    const skip = (page - 1) * limit;

    const where: any = {};
    if (query.isActive !== undefined) where.isActive = query.isActive;

    const [items, total] = await Promise.all([
      this.prisma.subcategory.findMany({
        where,
        skip,
        take: limit,
        orderBy: { sortOrder: 'asc' },
        include: { category: true, _count: { select: { products: true } } },
      }),
      this.prisma.subcategory.count({ where }),
    ]);

    return { items, total, page, limit, totalPages: Math.ceil(total / limit) };
  }

  async findOne(id: number) {
    const subcategory = await this.prisma.subcategory.findUnique({
      where: { id },
      include: { category: true, products: { take: 10, orderBy: { createdAt: 'desc' as const } } },
    });
    if (!subcategory) throw new NotFoundException('Subcategory not found');
    return subcategory;
  }

  async findBySlug(slug: string) {
    const subcategory = await this.prisma.subcategory.findUnique({
      where: { slug },
      include: { category: true },
    });
    if (!subcategory) throw new NotFoundException('Subcategory not found');
    return subcategory;
  }

  async findByCategoryId(categoryId: number) {
    return this.prisma.subcategory.findMany({
      where: { categoryId },
      orderBy: { sortOrder: 'asc' },
      include: { category: true },
    });
  }

  async create(dto: CreateSubcategoryDto) {
    return this.prisma.subcategory.create({
      data: {
        csvId: `subcat_${Date.now()}`,
        name: dto.name,
        slug: dto.slug,
        categoryId: dto.categoryId,
        image: dto.image,
        sortOrder: dto.sortOrder ?? 0,
        isActive: dto.isActive ?? true,
      },
      include: { category: true },
    });
  }

  async update(id: number, dto: UpdateSubcategoryDto) {
    await this.findOne(id);
    return this.prisma.subcategory.update({
      where: { id },
      data: dto,
      include: { category: true },
    });
  }

  async remove(id: number) {
    await this.findOne(id);
    return this.prisma.subcategory.delete({ where: { id } });
  }
}
