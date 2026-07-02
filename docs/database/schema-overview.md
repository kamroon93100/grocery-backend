\# Database Schema Overview



\## Technology



\- PostgreSQL

\- Prisma ORM



\## Core Entities



```text

User

&#x20;├── Address

&#x20;├── Cart

&#x20;├── Orders

&#x20;│      └── OrderItems

&#x20;├── Wishlist

&#x20;└── Notifications



Category

&#x20;    │

&#x20;    └── Product

&#x20;            │

&#x20;            ├── ProductImage

&#x20;            ├── Variant

&#x20;            └── Reviews



Coupon

```



\## Relationships



\- One Category → Many Products

\- One Product → Many Variants

\- One User → Many Orders

\- One Order → Many Order Items

\- One User → One Cart

\- One Cart → Many Cart Items



\## ORM



Database access is handled through Prisma Client.



