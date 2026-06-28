import { Controller, Get, Post, Put, Delete, Body, Param, UseGuards, Req, ParseIntPipe } from '@nestjs/common';
import { AddressesService } from './addresses.service';
import { CreateAddressDto, UpdateAddressDto } from './dto';
import { JwtAuthGuard } from '../common/jwt-auth.guard';

@Controller('addresses')
@UseGuards(JwtAuthGuard)
export class AddressesController {
  constructor(private addressesService: AddressesService) {}

  @Get()
  findAll(@Req() req: any) {
    return this.addressesService.findAll(req.user.id);
  }

  @Get(':id')
  findOne(@Req() req: any, @Param('id', ParseIntPipe) id: number) {
    return this.addressesService.findOne(id, req.user.id);
  }

  @Post()
  create(@Req() req: any, @Body() dto: CreateAddressDto) {
    return this.addressesService.create(req.user.id, dto);
  }

  @Put(':id')
  update(@Req() req: any, @Param('id', ParseIntPipe) id: number, @Body() dto: UpdateAddressDto) {
    return this.addressesService.update(id, req.user.id, dto);
  }

  @Put(':id/default')
  setDefault(@Req() req: any, @Param('id', ParseIntPipe) id: number) {
    return this.addressesService.setDefault(id, req.user.id);
  }

  @Delete(':id')
  remove(@Req() req: any, @Param('id', ParseIntPipe) id: number) {
    return this.addressesService.remove(id, req.user.id);
  }
}
