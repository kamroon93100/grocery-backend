import { Controller, Get, Post, Put, Delete, Body, Param, Query, ParseIntPipe } from '@nestjs/common';
import { TopPicksService } from './top-picks.service';
import { CreateTopPickDto, UpdateTopPickDto, TopPickQueryDto } from './dto';

@Controller('top-picks')
export class TopPicksController {
  constructor(private readonly service: TopPicksService) {}

  @Get()
  findAll(@Query() query: TopPickQueryDto) {
    return this.service.findAll(query);
  }

  @Get('section/:sectionSlug')
  findBySection(@Param('sectionSlug') sectionSlug: string) {
    return this.service.findBySection(sectionSlug);
  }

  @Get(':id')
  findOne(@Param('id', ParseIntPipe) id: number) {
    return this.service.findOne(id);
  }

  @Post()
  create(@Body() dto: CreateTopPickDto) {
    return this.service.create(dto);
  }

  @Put(':id')
  update(@Param('id', ParseIntPipe) id: number, @Body() dto: UpdateTopPickDto) {
    return this.service.update(id, dto);
  }

  @Delete(':id')
  remove(@Param('id', ParseIntPipe) id: number) {
    return this.service.remove(id);
  }
}
