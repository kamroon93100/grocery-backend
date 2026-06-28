import { Controller, Get, Post, Put, Delete, Body, Param, Query, ParseIntPipe } from '@nestjs/common';
import { SubcategoriesService } from './subcategories.service';
import { CreateSubcategoryDto, UpdateSubcategoryDto, SubcategoryQueryDto } from './dto';

@Controller('subcategories')
export class SubcategoriesController {
  constructor(private readonly service: SubcategoriesService) {}

  @Get()
  findAll(@Query() query: SubcategoryQueryDto) {
    return this.service.findAll(query);
  }

  @Get(':id')
  findOne(@Param('id', ParseIntPipe) id: number) {
    return this.service.findOne(id);
  }

  @Get('slug/:slug')
  findBySlug(@Param('slug') slug: string) {
    return this.service.findBySlug(slug);
  }

  @Get('category/:categoryId')
  findByCategoryId(@Param('categoryId', ParseIntPipe) categoryId: number) {
    return this.service.findByCategoryId(categoryId);
  }

  @Post()
  create(@Body() dto: CreateSubcategoryDto) {
    return this.service.create(dto);
  }

  @Put(':id')
  update(@Param('id', ParseIntPipe) id: number, @Body() dto: UpdateSubcategoryDto) {
    return this.service.update(id, dto);
  }

  @Delete(':id')
  remove(@Param('id', ParseIntPipe) id: number) {
    return this.service.remove(id);
  }
}
