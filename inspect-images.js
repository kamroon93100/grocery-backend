const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

async function main() {
  const products = await prisma.product.findMany({
    include: {
      images: true,
    },
    orderBy: {
      name: "asc",
    },
  });

  for (const p of products) {
    console.log("------------------------------------------------");
    console.log(p.name);
    console.log(p.images.map(i => i.image));
  }
}

main().finally(() => prisma.$disconnect());
