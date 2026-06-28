import { Injectable, NotFoundException } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { CreateAddressDto, UpdateAddressDto } from './dto';

@Injectable()
export class AddressesService {
  constructor(private prisma: PrismaService) {}

  async findAll(userId: number) {
    return this.prisma.address.findMany({
      where: { userId },
      orderBy: [{ isDefault: 'desc' }, { createdAt: 'desc' }],
    });
  }

  async findOne(id: number, userId: number) {
    const address = await this.prisma.address.findFirst({ where: { id, userId } });
    if (!address) throw new NotFoundException('Address not found');
    return address;
  }

  async create(userId: number, dto: CreateAddressDto) {
    if (dto.isDefault) {
      await this.prisma.address.updateMany({
        where: { userId },
        data: { isDefault: false },
      });
    }
    return this.prisma.address.create({
      data: { ...dto, userId },
    });
  }

  async update(id: number, userId: number, dto: UpdateAddressDto) {
    await this.findOne(id, userId);
    if (dto.isDefault) {
      await this.prisma.address.updateMany({
        where: { userId, id: { not: id } },
        data: { isDefault: false },
      });
    }
    return this.prisma.address.update({
      where: { id },
      data: dto,
    });
  }

  async setDefault(id: number, userId: number) {
    await this.findOne(id, userId);
    await this.prisma.address.updateMany({
      where: { userId },
      data: { isDefault: false },
    });
    return this.prisma.address.update({
      where: { id },
      data: { isDefault: true },
    });
  }

  async remove(id: number, userId: number) {
    await this.findOne(id, userId);
    const address = await this.prisma.address.delete({ where: { id } });
    const remaining = await this.prisma.address.count({ where: { userId } });
    if (remaining > 0 && address.isDefault) {
      const first = await this.prisma.address.findFirst({ where: { userId }, orderBy: { createdAt: 'asc' } });
      if (first) await this.prisma.address.update({ where: { id: first.id }, data: { isDefault: true } });
    }
    return address;
  }
}
