import { Controller, Get, Post, Put, Delete, Body, Param, Query, ParseIntPipe } from '@nestjs/common';
import { VariantsService } from './variants.service';
import { CreateVariantDto, UpdateVariantDto, VariantQueryDto } from './dto';

@Controller('variants')
export class VariantsController {
  constructor(private readonly service: VariantsService) {}

  @Get()
  findAll(@Query() query: VariantQueryDto) {
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
  create(@Body() dto: CreateVariantDto) {
    return this.service.create(dto);
  }

  @Put(':id')
  update(@Param('id', ParseIntPipe) id: number, @Body() dto: UpdateVariantDto) {
    return this.service.update(id, dto);
  }

  @Put(':id/default')
  setDefault(@Param('id', ParseIntPipe) id: number) {
    return this.service.setDefault(id);
  }

  @Delete(':id')
  remove(@Param('id', ParseIntPipe) id: number) {
    return this.service.remove(id);
  }
}
