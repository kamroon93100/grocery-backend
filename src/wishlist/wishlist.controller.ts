import { Controller, Get, Post, Delete, Body, Param, UseGuards, Req, ParseIntPipe } from '@nestjs/common';
import { WishlistService } from './wishlist.service';
import { AddWishlistItemDto } from './dto';
import { JwtAuthGuard } from '../common/jwt-auth.guard';

@Controller('wishlist')
@UseGuards(JwtAuthGuard)
export class WishlistController {
  constructor(private wishlistService: WishlistService) {}

  @Get()
  findAll(@Req() req: any) {
    return this.wishlistService.findAll(req.user.id);
  }

  @Post()
  add(@Req() req: any, @Body() dto: AddWishlistItemDto) {
    return this.wishlistService.add(req.user.id, dto);
  }

  @Get('check/:productId')
  check(@Req() req: any, @Param('productId', ParseIntPipe) productId: number) {
    return this.wishlistService.check(req.user.id, productId);
  }

  @Delete(':productId')
  remove(@Req() req: any, @Param('productId', ParseIntPipe) productId: number) {
    return this.wishlistService.remove(req.user.id, productId);
  }
}
