import { Module } from '@nestjs/common';
import { TopPicksController } from './top-picks.controller';
import { TopPicksService } from './top-picks.service';

@Module({
  controllers: [TopPicksController],
  providers: [TopPicksService],
  exports: [TopPicksService],
})
export class TopPicksModule {}
