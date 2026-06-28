import { Controller, Get, Post, Put, Delete, Body, Param, UseGuards, Req, ParseIntPipe } from '@nestjs/common';
import { CartService } from './cart.service';
import { AddCartItemDto, UpdateCartItemDto } from './dto';
import { JwtAuthGuard } from '../common/jwt-auth.guard';

@Controller('cart')
@UseGuards(JwtAuthGuard)
export class CartController {
  constructor(private cartService: CartService) {}

  @Get()
  getCart(@Req() req: any) {
    return this.cartService.getCart(req.user.id);
  }

  @Get('count')
  getCount(@Req() req: any) {
    return this.cartService.getCartItemCount(req.user.id);
  }

  @Post('items')
  addItem(@Req() req: any, @Body() dto: AddCartItemDto) {
    return this.cartService.addItem(req.user.id, dto);
  }

  @Put('items/:id')
  updateItem(@Req() req: any, @Param('id', ParseIntPipe) id: number, @Body() dto: UpdateCartItemDto) {
    return this.cartService.updateItem(id, req.user.id, dto);
  }

  @Delete('items/:id')
  removeItem(@Req() req: any, @Param('id', ParseIntPipe) id: number) {
    return this.cartService.removeItem(id, req.user.id);
  }

  @Delete()
  clearCart(@Req() req: any) {
    return this.cartService.clearCart(req.user.id);
  }
}
