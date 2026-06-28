import { Injectable, NotFoundException, ConflictException } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { CreateReviewDto, UpdateReviewDto, ReviewQueryDto } from './dto';

@Injectable()
export class ReviewsService {
  constructor(private prisma: PrismaService) {}

  async findByProduct(productId: number, query: ReviewQueryDto) {
    const page = query.page || 1;
    const limit = query.limit || 10;
    const skip = (page - 1) * limit;

    const where: any = { productId };
    if (query.rating) where.rating = query.rating;

    const [items, total] = await Promise.all([
      this.prisma.review.findMany({
        where,
        include: { user: { select: { id: true, name: true, avatar: true } } },
        orderBy: { createdAt: 'desc' },
        skip,
        take: limit,
      }),
      this.prisma.review.count({ where }),
    ]);
    return { items, total, page, limit, totalPages: Math.ceil(total / limit) };
  }

  async create(userId: number, dto: CreateReviewDto) {
    const product = await this.prisma.product.findUnique({ where: { id: dto.productId } });
    if (!product) throw new NotFoundException('Product not found');

    const existing = await this.prisma.review.findFirst({
      where: { userId, productId: dto.productId },
    });
    if (existing) throw new ConflictException('You have already reviewed this product');

    const review = await this.prisma.review.create({
      data: {
        userId,
        productId: dto.productId,
        orderId: dto.orderId,
        rating: dto.rating,
        comment: dto.comment || '',
        images: dto.images ?? [],
      },
      include: { user: { select: { id: true, name: true, avatar: true } } },
    });

    await this.updateProductRating(dto.productId);
    return review;
  }

  async update(id: number, userId: number, dto: UpdateReviewDto) {
    const review = await this.prisma.review.findFirst({ where: { id, userId } });
    if (!review) throw new NotFoundException('Review not found');

    const updated = await this.prisma.review.update({
      where: { id },
      data: dto,
      include: { user: { select: { id: true, name: true, avatar: true } } },
    });

    await this.updateProductRating(review.productId);
    return updated;
  }

  async remove(id: number, userId: number) {
    const review = await this.prisma.review.findFirst({ where: { id, userId } });
    if (!review) throw new NotFoundException('Review not found');

    await this.prisma.review.delete({ where: { id } });
    await this.updateProductRating(review.productId);
    return { message: 'Review deleted' };
  }

  private async updateProductRating(productId: number) {
    const aggregate = await this.prisma.review.aggregate({
      where: { productId },
      _avg: { rating: true },
      _count: true,
    });
    await this.prisma.product.update({
      where: { id: productId },
      data: {
        rating: aggregate._avg.rating || 0,
        ratingCount: aggregate._count,
      },
    });
  }
}
