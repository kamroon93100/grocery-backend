import { IsString, IsNumber, IsOptional, Min, Max, IsArray } from 'class-validator';

export class CreateReviewDto {
  @IsNumber()
  productId: number;

  @IsNumber() @IsOptional()
  orderId?: number;

  @IsNumber() @Min(1) @Max(5)
  rating: number;

  @IsString() @IsOptional()
  comment?: string;

  @IsOptional()
  images?: string[];
}

export class UpdateReviewDto {
  @IsNumber() @IsOptional() @Min(1) @Max(5)
  rating?: number;

  @IsString() @IsOptional()
  comment?: string;

  @IsOptional()
  images?: string[];
}

export class ReviewQueryDto {
  @IsOptional()
  page?: number;

  @IsOptional()
  limit?: number;

  @IsNumber() @IsOptional()
  rating?: number;
}
