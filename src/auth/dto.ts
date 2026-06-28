import { IsString, IsEmail, IsOptional, MinLength, MaxLength } from 'class-validator';

export class RegisterDto {
  @IsString() @MinLength(2) @MaxLength(100)
  name: string;

  @IsEmail()
  email: string;

  @IsString() @MinLength(6) @MaxLength(100)
  password: string;

  @IsString() @IsOptional()
  phone?: string;
}

export class LoginDto {
  @IsEmail()
  email: string;

  @IsString()
  password: string;
}

export class SendOtpDto {
  @IsString()
  phone: string;
}

export class VerifyOtpDto {
  @IsString()
  phone: string;

  @IsString() @MinLength(4) @MaxLength(6)
  otp: string;
}

export class RefreshTokenDto {
  @IsString()
  refreshToken: string;
}

export class LoginResponseDto {
  accessToken: string;
  refreshToken: string;
  user: {
    id: number;
    name: string;
    email: string;
    role: string;
    avatar?: string;
  };
}
