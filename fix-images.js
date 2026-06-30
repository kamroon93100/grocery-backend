const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

const mapping = {
  "Fresh Banana Robusta": "fresh-banana-robusta-1-dozen.webp",
  "Apple Royal Gala": "apple-royal-gala-4-pcs.webp",
  "Pomegranate": "pomegranate-2-pcs.webp",
  "Orange Nagpur": "orange-nagpur-1-kg.webp",
  "Papaya Semi Ripe": "papaya-semi-ripe-1-pc.webp",
  "Potato Fresh": "potato-fresh-1-kg.webp",
  "Onion Red": "onion-red-1-kg.webp",
  "Tomato Hybrid": "tomato-hybrid-1-kg.webp"
};

async function main() {
  for (const [name, image] of Object.entries(mapping)) {
    const product = await prisma.product.findFirst({ where: { name } });
    if (!product) {
      console.log("NOT FOUND:", name);
      continue;
    }

    await prisma.productImage.updateMany({
      where: { productId: product.id },
      data: {
        image,
        thumbnail: image,
      },
    });

    console.log("UPDATED:", name, "=>", image);
  }
}

main()
  .catch(console.error)
  .finally(async () => prisma.$disconnect());
