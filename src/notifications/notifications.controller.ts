import { Controller, Get, Put, Delete, Param, Query, UseGuards, Req, ParseIntPipe } from '@nestjs/common';
import { NotificationsService } from './notifications.service';
import { JwtAuthGuard } from '../common/jwt-auth.guard';

@Controller('notifications')
@UseGuards(JwtAuthGuard)
export class NotificationsController {
  constructor(private notificationsService: NotificationsService) {}

  @Get()
  findAll(@Req() req: any, @Query('page') page?: number, @Query('limit') limit?: number) {
    return this.notificationsService.findAll(req.user.id, page || 1, limit || 20);
  }

  @Put('read-all')
  markAllAsRead(@Req() req: any) {
    return this.notificationsService.markAllAsRead(req.user.id);
  }

  @Put(':id/read')
  markAsRead(@Req() req: any, @Param('id', ParseIntPipe) id: number) {
    return this.notificationsService.markAsRead(id, req.user.id);
  }

  @Delete(':id')
  delete(@Req() req: any, @Param('id', ParseIntPipe) id: number) {
    return this.notificationsService.delete(id, req.user.id);
  }
}
