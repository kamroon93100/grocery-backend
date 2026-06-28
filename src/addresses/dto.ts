import { IsString, IsOptional, IsBoolean, MinLength, MaxLength } from 'class-validator';

export class CreateAddressDto {
  @IsString() @IsOptional()
  label?: string;

  @IsString() @MinLength(2) @MaxLength(100)
  name: string;

  @IsString()
  phone: string;

  @IsString()
  line1: string;

  @IsString() @IsOptional()
  line2?: string;

  @IsString()
  city: string;

  @IsString()
  state: string;

  @IsString()
  pincode: string;

  @IsString() @IsOptional()
  country?: string;

  @IsOptional()
  latitude?: number;

  @IsOptional()
  longitude?: number;

  @IsBoolean() @IsOptional()
  isDefault?: boolean;
}

export class UpdateAddressDto {
  @IsString() @IsOptional()
  label?: string;

  @IsString() @IsOptional() @MinLength(2) @MaxLength(100)
  name?: string;

  @IsString() @IsOptional()
  phone?: string;

  @IsString() @IsOptional()
  line1?: string;

  @IsString() @IsOptional()
  line2?: string;

  @IsString() @IsOptional()
  city?: string;

  @IsString() @IsOptional()
  state?: string;

  @IsString() @IsOptional()
  pincode?: string;

  @IsString() @IsOptional()
  country?: string;

  @IsOptional()
  latitude?: number;

  @IsOptional()
  longitude?: number;

  @IsBoolean() @IsOptional()
  isDefault?: boolean;
}
