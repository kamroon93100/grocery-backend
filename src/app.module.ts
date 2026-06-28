import { Module } from '@nestjs/common';
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

@Module({
  imports: [
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
  ],
})
export class AppModule {}
