import { IsString, IsOptional, MinLength, MaxLength, IsEmail } from 'class-validator';

export class UpdateProfileDto {
  @IsString() @IsOptional() @MinLength(2) @MaxLength(100)
  name?: string;

  @IsEmail() @IsOptional()
  email?: string;

  @IsString() @IsOptional()
  avatar?: string;

  @IsString() @IsOptional()
  fcmToken?: string;
}

export class ChangePasswordDto {
  @IsString()
  currentPassword: string;

  @IsString() @MinLength(6)
  newPassword: string;
}
