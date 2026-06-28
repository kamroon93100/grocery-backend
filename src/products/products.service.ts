import { Injectable, NotFoundException } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { Prisma } from '@prisma/client';
import { CreateProductDto, UpdateProductDto, ProductQueryDto } from './dto';

@Injectable()
export class ProductsService {
  constructor(private prisma: PrismaService) {}

  async findAll(query: ProductQueryDto) {
    const page = query.page || 1;
    const limit = query.limit || 20;
    const skip = (page - 1) * limit;

    const where: Prisma.ProductWhereInput = {};

    if (query.search) {
      where.OR = [
        { name: { contains: query.search, mode: 'insensitive' } },
        { slug: { contains: query.search, mode: 'insensitive' } },
      ];
    }
    if (query.categoryId !== undefined) where.categoryId = query.categoryId;
    if (query.subcategoryId !== undefined) where.subcategoryId = query.subcategoryId;
    if (query.brandId !== undefined) where.brandId = query.brandId;
    if (query.isFeatured !== undefined) where.isFeatured = query.isFeatured;

    const orderBy: Prisma.ProductOrderByWithRelationInput =
      query.sortBy === 'name'
        ? { name: 'asc' }
        : query.sortBy === 'price'
          ? { id: 'asc' }
          : query.sortBy === 'rating'
            ? { rating: 'desc' }
            : { createdAt: 'desc' };

    let items = await this.prisma.product.findMany({
      where,
      skip,
      take: limit,
      orderBy,
      include: {
        category: true,
        subcategory: true,
        brand: true,
        variants: { where: { isDefault: true }, take: 1 },
        images: { where: { isPrimary: true }, take: 1 },
      },
    });

    if (query.minPrice !== undefined || query.maxPrice !== undefined) {
      items = items.filter((p) => {
        const price = Number(p.variants[0]?.sellingPrice ?? 0);
        if (query.minPrice !== undefined && price < query.minPrice) return false;
        if (query.maxPrice !== undefined && price > query.maxPrice) return false;
        return true;
      });
    }

    const total = query.minPrice !== undefined || query.maxPrice !== undefined
      ? items.length
      : await this.prisma.product.count({ where });

    const paginatedItems = query.minPrice !== undefined || query.maxPrice !== undefined
      ? items
      : items;

    return { items: paginatedItems, total, page, limit, totalPages: Math.ceil(total / limit) };
  }

  async findOne(id: number) {
    const product = await this.prisma.product.findUnique({
      where: { id },
      include: {
        category: true,
        subcategory: true,
        brand: true,
        variants: true,
        images: { orderBy: { sortOrder: 'asc' } },
        topPicks: true,
      },
    });
    if (!product) throw new NotFoundException('Product not found');
    return product;
  }

  async findBySlug(slug: string) {
    const product = await this.prisma.product.findUnique({
      where: { slug },
      include: {
        category: true,
        subcategory: true,
        brand: true,
        variants: true,
        images: { orderBy: { sortOrder: 'asc' } },
        topPicks: true,
      },
    });
    if (!product) throw new NotFoundException('Product not found');
    return product;
  }

  async getFeatured() {
    return this.prisma.product.findMany({
      where: { isFeatured: true, isActive: true },
      include: {
        category: true,
        variants: { where: { isDefault: true }, take: 1 },
        images: { where: { isPrimary: true }, take: 1 },
      },
      orderBy: { createdAt: 'desc' },
    });
  }

  async search(query: string) {
    return this.prisma.product.findMany({
      where: {
        isActive: true,
        OR: [
          { name: { contains: query, mode: 'insensitive' } },
          { slug: { contains: query, mode: 'insensitive' } },
          { sku: { contains: query, mode: 'insensitive' } },
        ],
      },
      include: {
        category: true,
        variants: { where: { isDefault: true }, take: 1 },
        images: { where: { isPrimary: true }, take: 1 },
      },
      take: 20,
    });
  }

  async create(dto: CreateProductDto) {
    return this.prisma.product.create({ data: dto });
  }

  async update(id: number, dto: UpdateProductDto) {
    await this.findOne(id);
    return this.prisma.product.update({ where: { id }, data: dto });
  }

  async remove(id: number) {
    await this.findOne(id);
    return this.prisma.product.delete({ where: { id } });
  }
}
