import { IsNumber, IsOptional, Min } from 'class-validator';

export class AddCartItemDto {
  @IsNumber()
  productId: number;

  @IsNumber() @IsOptional()
  variantId?: number;

  @IsNumber() @Min(1) @IsOptional()
  quantity?: number;
}

export class UpdateCartItemDto {
  @IsNumber() @Min(0)
  quantity: number;
}
