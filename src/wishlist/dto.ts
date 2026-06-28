import { IsNumber } from 'class-validator';

export class AddWishlistItemDto {
  @IsNumber()
  productId: number;
}
