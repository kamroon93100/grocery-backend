import { Controller, Get, Post, Put, Delete, Body, Param, Query, UseGuards, Req, ParseIntPipe } from '@nestjs/common';
import { ReviewsService } from './reviews.service';
import { CreateReviewDto, UpdateReviewDto, ReviewQueryDto } from './dto';
import { JwtAuthGuard, OptionalAuthGuard } from '../common/jwt-auth.guard';

@Controller()
export class ReviewsController {
  constructor(private reviewsService: ReviewsService) {}

  @Get('products/:productId/reviews')
  @UseGuards(OptionalAuthGuard)
  findByProduct(@Param('productId', ParseIntPipe) productId: number, @Query() query: ReviewQueryDto) {
    return this.reviewsService.findByProduct(productId, query);
  }

  @Post('reviews')
  @UseGuards(JwtAuthGuard)
  create(@Req() req: any, @Body() dto: CreateReviewDto) {
    return this.reviewsService.create(req.user.id, dto);
  }

  @Put('reviews/:id')
  @UseGuards(JwtAuthGuard)
  update(@Req() req: any, @Param('id', ParseIntPipe) id: number, @Body() dto: UpdateReviewDto) {
    return this.reviewsService.update(id, req.user.id, dto);
  }

  @Delete('reviews/:id')
  @UseGuards(JwtAuthGuard)
  remove(@Req() req: any, @Param('id', ParseIntPipe) id: number) {
    return this.reviewsService.remove(id, req.user.id);
  }
}
