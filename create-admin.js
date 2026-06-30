const { PrismaClient } = require('@prisma/client');
const bcrypt = require('bcrypt');

const prisma = new PrismaClient();

async function main() {
  const password = await bcrypt.hash('Admin@123', 12);

  const user = await prisma.user.upsert({
    where: { email: 'admin@grocery.com' },
    update: {
      password,
      role: 'admin',
      isActive: true,
      isVerified: true
    },
    create: {
      name: 'Admin',
      email: 'admin@grocery.com',
      phone: '+919999999999',
      password,
      role: 'admin',
      isActive: true,
      isVerified: true
    }
  });

  console.log('Admin ready:', user.email);
}

main()
  .catch(console.error)
  .finally(() => prisma.$disconnect());
