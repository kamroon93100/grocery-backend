import { Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';
import { ThrottlerModule } from '@nestjs/throttler';
import * as Joi from 'joi';
import { PrismaModule } from './prisma/prisma.module';
import { CategoriesModule } from './categories/categories.module';
import { SubcategoriesModule } from './subcategories/subcategories.module';
import { BrandsModule } from './brands/brands.module';
import { ProductsModule } from './products/products.module';
import { VariantsModule } from './variants/variants.module';
import { ImagesModule } from './images/images.module';
import { TopPicksModule } from './top-picks/top-picks.module';
import { OffersModule } from './offers/offers.module';
import { AuthModule } from './auth/auth.module';
import { UsersModule } from './users/users.module';
import { AddressesModule } from './addresses/addresses.module';
import { OrdersModule } from './orders/orders.module';
import { CartModule } from './cart/cart.module';
import { ReviewsModule } from './reviews/reviews.module';
import { CouponsModule } from './coupons/coupons.module';
import { NotificationsModule } from './notifications/notifications.module';
import { WishlistModule } from './wishlist/wishlist.module';
import { HealthModule } from './health/health.module';

@Module({
  imports: [
    ConfigModule.forRoot({
      isGlobal: true,
      validationSchema: Joi.object({
        DATABASE_URL: Joi.string().required(),
        JWT_SECRET: Joi.string().min(24).default('development_only_change_this_secret'),
        JWT_EXPIRES_IN: Joi.string().default('7d'),
        PORT: Joi.number().default(3001),
        NODE_ENV: Joi.string().valid('development', 'production', 'test').default('development'),
        CORS_ORIGIN: Joi.string().allow('').optional(),
      }),
    }),
    ThrottlerModule.forRoot([
      {
        ttl: 60000,
        limit: 100,
      },
    ]),
    PrismaModule,
    CategoriesModule,
    SubcategoriesModule,
    BrandsModule,
    ProductsModule,
    VariantsModule,
    ImagesModule,
    TopPicksModule,
    OffersModule,
    AuthModule,
    UsersModule,
    AddressesModule,
    OrdersModule,
    CartModule,
    ReviewsModule,
    CouponsModule,
    NotificationsModule,
    WishlistModule,
    HealthModule,
  ],
})
export class AppModule {}
