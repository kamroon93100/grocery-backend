import { Controller, Get, Post, Put, Delete, Body, Param, Query, ParseIntPipe } from '@nestjs/common';
import { ImagesService } from './images.service';
import { CreateImageDto, UpdateImageDto, ImageQueryDto } from './dto';

@Controller('images')
export class ImagesController {
  constructor(private readonly service: ImagesService) {}

  @Get()
  findAll(@Query() query: ImageQueryDto) {
    return this.service.findAll(query);
  }

  @Get('product/:productId')
  findByProductId(@Param('productId', ParseIntPipe) productId: number) {
    return this.service.findByProductId(productId);
  }

  @Get(':id')
  findOne(@Param('id', ParseIntPipe) id: number) {
    return this.service.findOne(id);
  }

  @Post()
  create(@Body() dto: CreateImageDto) {
    return this.service.create(dto);
  }

  @Put(':id')
  update(@Param('id', ParseIntPipe) id: number, @Body() dto: UpdateImageDto) {
    return this.service.update(id, dto);
  }

  @Put(':id/primary')
  setPrimary(@Param('id', ParseIntPipe) id: number) {
    return this.service.setPrimary(id);
  }

  @Delete(':id')
  remove(@Param('id', ParseIntPipe) id: number) {
    return this.service.remove(id);
  }
}
