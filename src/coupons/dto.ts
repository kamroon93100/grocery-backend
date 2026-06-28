import { IsString, IsNumber, IsOptional } from 'class-validator';

export class ValidateCouponDto {
  @IsString()
  code: string;

  @IsNumber()
  orderValue: number;
}

export class CreateCouponDto {
  @IsString()
  code: string;

  @IsString() @IsOptional()
  description?: string;

  @IsString()
  type: string;

  @IsNumber()
  value: number;

  @IsNumber() @IsOptional()
  minOrderValue?: number;

  @IsNumber() @IsOptional()
  maxDiscount?: number;

  @IsNumber() @IsOptional()
  usageLimit?: number;

  @IsOptional()
  expiresAt?: string;
}
