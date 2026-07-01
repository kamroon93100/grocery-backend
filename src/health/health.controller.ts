import { Controller, Get } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';

@Controller('health')
export class HealthController {
  constructor(private readonly prisma: PrismaService) {}

  @Get()
  async check() {
    await this.prisma.$queryRaw`SELECT 1`;
    return {
      success: true,
      status: 'ok',
      service: 'Kohli Store API',
      uptime: process.uptime(),
      timestamp: new Date().toISOString(),
    };
  }
}
