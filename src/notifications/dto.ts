import { IsString, IsOptional } from 'class-validator';

export class CreateNotificationDto {
  @IsString()
  title: string;

  @IsString()
  body: string;

  @IsString() @IsOptional()
  type?: string;

  @IsOptional()
  data?: any;

  @IsString() @IsOptional()
  imageUrl?: string;
}
