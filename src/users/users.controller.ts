import { Controller, Get, Put, Post, Body, Param, Query, UseGuards, Req, ParseIntPipe } from '@nestjs/common';
import { UsersService } from './users.service';
import { UpdateProfileDto, ChangePasswordDto } from './dto';
import { JwtAuthGuard } from '../common/jwt-auth.guard';
import { Roles, RolesGuard } from '../common/roles.guard';

@Controller()
export class UsersController {
  constructor(private usersService: UsersService) {}

  @Get('users/profile')
  @UseGuards(JwtAuthGuard)
  getProfile(@Req() req: any) {
    return this.usersService.getProfile(req.user.id);
  }

  @Put('users/profile')
  @UseGuards(JwtAuthGuard)
  updateProfile(@Req() req: any, @Body() dto: UpdateProfileDto) {
    return this.usersService.updateProfile(req.user.id, dto);
  }

  @Post('users/change-password')
  @UseGuards(JwtAuthGuard)
  changePassword(@Req() req: any, @Body() dto: ChangePasswordDto) {
    return this.usersService.changePassword(req.user.id, dto);
  }

  @Get('users/wallet')
  @UseGuards(JwtAuthGuard)
  getWallet(@Req() req: any) {
    return this.usersService.getWallet(req.user.id);
  }

  @Get('users/orders')
  @UseGuards(JwtAuthGuard)
  getOrders(
    @Req() req: any,
    @Query('page') page?: number,
    @Query('limit') limit?: number,
  ) {
    return this.usersService.getOrders(req.user.id, page || 1, limit || 10);
  }

  @Get('admin/users')
  @UseGuards(JwtAuthGuard, RolesGuard)
  @Roles('admin')
  findAll(@Query('page') page?: number, @Query('limit') limit?: number) {
    return this.usersService.getOrders(0, page || 1, limit || 10);
  }
}
