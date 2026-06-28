import { IsString, IsOptional, IsBoolean, IsInt, Min } from 'class-validator';

export class CreateTopPickDto {
  @IsString()
  csvId: string;

  @IsString()
  sectionName: string;

  @IsString()
  sectionSlug: string;

  @IsInt()
  productId: number;

  @IsOptional()
  @IsInt()
  sortOrder?: number;

  @IsOptional()
  @IsBoolean()
  isActive?: boolean;
}

export class UpdateTopPickDto {
  @IsOptional()
  @IsString()
  sectionName?: string;

  @IsOptional()
  @IsString()
  sectionSlug?: string;

  @IsOptional()
  @IsInt()
  productId?: number;

  @IsOptional()
  @IsInt()
  sortOrder?: number;

  @IsOptional()
  @IsBoolean()
  isActive?: boolean;
}

export class TopPickQueryDto {
  @IsOptional()
  @IsString()
  sectionSlug?: string;

  @IsOptional()
  @IsInt()
  @Min(1)
  page?: number;

  @IsOptional()
  @IsInt()
  @Min(1)
  limit?: number;
}
