import { IsString, IsNumber, IsOptional, IsArray, IsEnum, Min } from 'class-validator';
import { OrderStatus, PaymentMethod } from '@prisma/client';

export class CreateOrderItemDto {
  @IsNumber() productId: number;
  @IsNumber() @IsOptional() variantId?: number;
  @IsNumber() @Min(1) quantity: number;
  @IsNumber() price: number;
  @IsString() productName: string;
  @IsString() @IsOptional() productImage?: string;
  @IsString() @IsOptional() variantLabel?: string;
}

export class CreateOrderDto {
  @IsArray()
  items: CreateOrderItemDto[];

  @IsNumber()
  subtotal: number;

  @IsNumber() @IsOptional()
  discount?: number;

  @IsNumber() @IsOptional()
  deliveryFee?: number;

  @IsNumber() @IsOptional()
  tax?: number;

  @IsNumber()
  totalAmount: number;

  @IsString() @IsOptional()
  couponCode?: string;

  @IsNumber() @IsOptional()
  couponDiscount?: number;

  @IsOptional()
  deliveryAddress: any;

  @IsString() @IsOptional()
  notes?: string;

  @IsOptional()
  @IsEnum(PaymentMethod)
  paymentMethod?: PaymentMethod;
}

export class UpdateOrderStatusDto {
  @IsEnum(OrderStatus)
  status: OrderStatus;

  @IsString() @IsOptional()
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
