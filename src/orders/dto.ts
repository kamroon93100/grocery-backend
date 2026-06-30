import { IsString, IsNumber, IsOptional, IsArray, IsEnum, Min } from 'class-validator';
import { OrderStatus, PaymentMethod } from '@prisma/client';

export class CreateOrderItemDto {
  @IsNumber()
  productId: number;

  @IsNumber()
  @IsOptional()
  variantId?: number;

  @IsNumber()
  @Min(1)
  quantity: number;
}

export class CreateOrderDto {
  @IsArray()
  items: CreateOrderItemDto[];

  @IsOptional()
  deliveryAddress: any;

  @IsString()
  @IsOptional()
  notes?: string;

  @IsOptional()
  @IsEnum(PaymentMethod)
  paymentMethod?: PaymentMethod;

  @IsString()
  @IsOptional()
  couponCode?: string;
}

export class UpdateOrderStatusDto {
  @IsEnum(OrderStatus)
  status: OrderStatus;

  @IsString()
  @IsOptional()
  cancelReason?: string;
}

export class OrderQueryDto {
  @IsOptional()
  page?: number;

  @IsOptional()
  limit?: number;

  @IsOptional()
  @IsEnum(OrderStatus)
  status?: OrderStatus;
}
