import { IsString, IsOptional, IsBoolean, IsNumber, IsInt, Min } from 'class-validator';

export class CreateOfferDto {
  @IsString()
  title: string;

  @IsString()
  type: string;

  @IsNumber()
  value: number;

  @IsOptional()
  @IsNumber()
  minOrderValue?: number;

  @IsString()
  code: string;

  @IsOptional()
  @IsBoolean()
  isActive?: boolean;
}

export class UpdateOfferDto {
  @IsOptional()
  @IsString()
  title?: string;

  @IsOptional()
  @IsString()
  type?: string;

  @IsOptional()
  @IsNumber()
  value?: number;

  @IsOptional()
  @IsNumber()
  minOrderValue?: number;

  @IsOptional()
  @IsString()
  code?: string;

  @IsOptional()
  @IsBoolean()
  isActive?: boolean;
}

export class OfferQueryDto {
  @IsOptional()
  @IsInt()
  @Min(1)
  page?: number;

  @IsOptional()
  @IsInt()
  @Min(1)
  limit?: number;

  @IsOptional()
  @IsBoolean()
  isActive?: boolean;
}
