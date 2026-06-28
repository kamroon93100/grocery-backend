import { Controller, Get, Post, Put, Body, Param, Query, UseGuards, Req, ParseIntPipe } from '@nestjs/common';
import { OrdersService } from './orders.service';
import { CreateOrderDto, UpdateOrderStatusDto, OrderQueryDto } from './dto';
import { JwtAuthGuard } from '../common/jwt-auth.guard';
import { Roles, RolesGuard } from '../common/roles.guard';

@Controller('orders')
export class OrdersController {
  constructor(private ordersService: OrdersService) {}

  @Get()
  @UseGuards(JwtAuthGuard)
  findAll(@Req() req: any, @Query() query: OrderQueryDto) {
    return this.ordersService.findAll(req.user.id, query);
  }

  @Get('admin')
  @UseGuards(JwtAuthGuard, RolesGuard)
  @Roles('admin')
  adminFindAll(@Query() query: OrderQueryDto) {
    return this.ordersService.findAll(0, query, true);
  }

  @Get('admin/stats')
  @UseGuards(JwtAuthGuard, RolesGuard)
  @Roles('admin')
  getStats() {
    return this.ordersService.getOrderStats();
  }

  @Get(':id')
  @UseGuards(JwtAuthGuard)
  findOne(@Req() req: any, @Param('id', ParseIntPipe) id: number) {
    return this.ordersService.findOne(id, req.user.id);
  }

  @Post()
  @UseGuards(JwtAuthGuard)
  create(@Req() req: any, @Body() dto: CreateOrderDto) {
    return this.ordersService.create(req.user.id, dto);
  }

  @Put(':id/status')
  @UseGuards(JwtAuthGuard, RolesGuard)
  @Roles('admin', 'warehouse', 'delivery')
  updateStatus(@Param('id', ParseIntPipe) id: number, @Body() dto: UpdateOrderStatusDto, @Req() req: any) {
    return this.ordersService.updateStatus(id, dto, req.user.role);
  }

  @Post(':id/cancel')
  @UseGuards(JwtAuthGuard)
  cancel(@Req() req: any, @Param('id', ParseIntPipe) id: number) {
    return this.ordersService.cancel(id, req.user.id);
  }

  @Put(':id/assign/:partnerId')
  @UseGuards(JwtAuthGuard, RolesGuard)
  @Roles('admin')
  assignDeliveryPartner(
    @Param('id', ParseIntPipe) id: number,
    @Param('partnerId', ParseIntPipe) partnerId: number,
  ) {
    return this.ordersService.assignDeliveryPartner(id, partnerId);
  }
}
