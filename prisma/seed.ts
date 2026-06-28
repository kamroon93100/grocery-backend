import { PrismaClient } from '@prisma/client';
import * as fs from 'fs';
import * as path from 'path';

const prisma = new PrismaClient();

const CSV_DIR = path.resolve(__dirname, '../../catalog');

function parseCSV(filename: string): Record<string, string>[] {
  const raw = fs.readFileSync(path.join(CSV_DIR, filename), 'utf-8');
  const lines = raw.trim().split('\n');
  const headers = lines[0].split(',').map(h => h.trim());
  return lines.slice(1).map(line => {
    const values: string[] = [];
    let inQuotes = false;
    let current = '';
    for (const ch of line) {
      if (ch === '"') {
        inQuotes = !inQuotes;
      } else if (ch === ',' && !inQuotes) {
        values.push(current.trim());
        current = '';
      } else {
        current += ch;
      }
    }
    values.push(current.trim());

    const record: Record<string, string> = {};
    headers.forEach((h, i) => {
      record[h] = values[i] || '';
    });
    return record;
  });
}

function toBool(val: string): boolean {
  const v = val.toUpperCase();
  return v === 'TRUE' || v === 'YES' || v === '1';
}

function toInt(val: string): number | null {
  const n = parseInt(val, 10);
  return isNaN(n) ? null : n;
}

function toFloat(val: string): number | null {
  const n = parseFloat(val);
  return isNaN(n) ? null : n;
}

async function seedCategories(): Promise<Map<string, number>> {
  const map = new Map<string, number>();
  const records = parseCSV('categories.csv');
  for (const r of records) {
    const rec = await prisma.category.upsert({
      where: { csvId: r.id },
      create: {
        csvId: r.id,
        name: r.name,
        slug: r.slug,
        image: r.image || null,
        sortOrder: toInt(r.sortOrder) ?? 0,
        isActive: toBool(r.isActive),
        createdAt: new Date(r.createdAt),
        updatedAt: new Date(r.updatedAt),
      },
      update: {
        name: r.name,
        slug: r.slug,
        image: r.image || null,
        sortOrder: toInt(r.sortOrder) ?? 0,
        isActive: toBool(r.isActive),
        updatedAt: new Date(r.updatedAt),
      },
    });
    map.set(r.id, rec.id);
  }
  console.log(`  Seeded ${map.size} categories`);
  return map;
}

async function seedSubcategories(catMap: Map<string, number>): Promise<Map<string, number>> {
  const map = new Map<string, number>();
  const records = parseCSV('subcategories.csv');
  for (const r of records) {
    const categoryId = catMap.get(r.categoryId);
    if (!categoryId) {
      console.warn(`  Skipping subcategory ${r.id}: category ${r.categoryId} not found`);
      continue;
    }
    const rec = await prisma.subcategory.upsert({
      where: { csvId: r.id },
      create: {
        csvId: r.id,
        categoryId,
        name: r.name,
        slug: r.slug,
        image: r.image || null,
        sortOrder: toInt(r.sortOrder) ?? 0,
        isActive: toBool(r.isActive),
        createdAt: new Date(r.createdAt),
        updatedAt: new Date(r.updatedAt),
      },
      update: {
        categoryId,
        name: r.name,
        slug: r.slug,
        image: r.image || null,
        sortOrder: toInt(r.sortOrder) ?? 0,
        isActive: toBool(r.isActive),
        updatedAt: new Date(r.updatedAt),
      },
    });
    map.set(r.id, rec.id);
  }
  console.log(`  Seeded ${map.size} subcategories`);
  return map;
}

async function seedBrands(): Promise<Map<string, number>> {
  const map = new Map<string, number>();
  const records = parseCSV('brands.csv');
  for (const r of records) {
    const rec = await prisma.brand.upsert({
      where: { csvId: r.id },
      create: {
        csvId: r.id,
        name: r.name,
        slug: r.slug,
        logo: r.logo || null,
        isActive: toBool(r.isActive),
        createdAt: new Date(r.createdAt),
        updatedAt: new Date(r.updatedAt),
      },
      update: {
        name: r.name,
        slug: r.slug,
        logo: r.logo || null,
        isActive: toBool(r.isActive),
        updatedAt: new Date(r.updatedAt),
      },
    });
    map.set(r.id, rec.id);
  }
  console.log(`  Seeded ${map.size} brands`);
  return map;
}

async function seedProducts(
  catMap: Map<string, number>,
  subMap: Map<string, number>,
  brandMap: Map<string, number>,
): Promise<Map<string, number>> {
  const map = new Map<string, number>();
  const records = parseCSV('products.csv');
  for (const r of records) {
    const categoryId = catMap.get(r.categoryId);
    if (!categoryId) {
      console.warn(`  Skipping product ${r.id}: category ${r.categoryId} not found`);
      continue;
    }
    const subcategoryId = r.subcategoryId ? (subMap.get(r.subcategoryId) || null) : null;
    const brandId = r.brandId ? (brandMap.get(r.brandId) || null) : null;

    const rec = await prisma.product.upsert({
      where: { csvId: r.id },
      create: {
        csvId: r.id,
        sku: r.sku,
        barcode: r.barcode || null,
        brandId,
        categoryId,
        subcategoryId,
        name: r.name,
        slug: r.slug,
        description: r.description || null,
        ingredients: r.ingredients || null,
        storage: r.storage || null,
        countryOfOrigin: r.countryOfOrigin || null,
        manufacturer: r.manufacturer || null,
        veg: toBool(r.veg),
        fssaiRequired: r.fssaiRequired || null,
        gstRate: toFloat(r.gstRate),
        rating: toFloat(r.rating),
        ratingCount: toInt(r.ratingCount),
        isFeatured: toBool(r.isFeatured),
        isTopPick: toBool(r.isTopPick),
        isBestseller: toBool(r.isBestseller),
        isFresh: toBool(r.isFresh),
        isOffer: toBool(r.isOffer),
        isActive: toBool(r.isActive),
        createdAt: new Date(r.createdAt),
        updatedAt: new Date(r.updatedAt),
      },
      update: {
        sku: r.sku,
        barcode: r.barcode || null,
        brandId,
        categoryId,
        subcategoryId,
        name: r.name,
        slug: r.slug,
        description: r.description || null,
        ingredients: r.ingredients || null,
        storage: r.storage || null,
        countryOfOrigin: r.countryOfOrigin || null,
        manufacturer: r.manufacturer || null,
        veg: toBool(r.veg),
        fssaiRequired: r.fssaiRequired || null,
        gstRate: toFloat(r.gstRate),
        rating: toFloat(r.rating),
        ratingCount: toInt(r.ratingCount),
        isFeatured: toBool(r.isFeatured),
        isTopPick: toBool(r.isTopPick),
        isBestseller: toBool(r.isBestseller),
        isFresh: toBool(r.isFresh),
        isOffer: toBool(r.isOffer),
        isActive: toBool(r.isActive),
        updatedAt: new Date(r.updatedAt),
      },
    });
    map.set(r.id, rec.id);
  }
  console.log(`  Seeded ${map.size} products`);
  return map;
}

async function seedVariants(prodMap: Map<string, number>): Promise<Map<string, number>> {
  const map = new Map<string, number>();
  const records = parseCSV('product_variants.csv');
  for (const r of records) {
    const productId = prodMap.get(r.productId);
    if (!productId) {
      console.warn(`  Skipping variant ${r.id}: product ${r.productId} not found`);
      continue;
    }
    const rec = await prisma.productVariant.upsert({
      where: { csvId: r.id },
      create: {
        csvId: r.id,
        productId,
        sku: r.sku,
        variant: r.variant || null,
        unit: r.unit || null,
        mrp: toFloat(r.mrp) ?? 0,
        sellingPrice: toFloat(r.sellingPrice) ?? 0,
        discountPercent: toFloat(r.discountPercent),
        stock: toInt(r.stock) ?? 0,
        weight: r.weight || null,
        isDefault: toBool(r.isDefault),
        isActive: toBool(r.isActive),
        createdAt: new Date(r.createdAt),
        updatedAt: new Date(r.updatedAt),
      },
      update: {
        productId,
        sku: r.sku,
        variant: r.variant || null,
        unit: r.unit || null,
        mrp: toFloat(r.mrp) ?? 0,
        sellingPrice: toFloat(r.sellingPrice) ?? 0,
        discountPercent: toFloat(r.discountPercent),
        stock: toInt(r.stock) ?? 0,
        weight: r.weight || null,
        isDefault: toBool(r.isDefault),
        isActive: toBool(r.isActive),
        updatedAt: new Date(r.updatedAt),
      },
    });
    map.set(r.id, rec.id);
  }
  console.log(`  Seeded ${map.size} variants`);
  return map;
}

async function seedImages(prodMap: Map<string, number>, varMap: Map<string, number>): Promise<void> {
  let count = 0;
  const records = parseCSV('product_images.csv');
  for (const r of records) {
    const productId = prodMap.get(r.productId);
    if (!productId) {
      console.warn(`  Skipping image ${r.id}: product ${r.productId} not found`);
      continue;
    }
    const variantId = r.variantId ? (varMap.get(r.variantId) || null) : null;
    await prisma.productImage.upsert({
      where: { csvId: r.id },
      create: {
        csvId: r.id,
        productId,
        variantId,
        image: r.image,
        thumbnail: r.thumbnail || null,
        altText: r.altText || null,
        sortOrder: toInt(r.sortOrder) ?? 0,
        isPrimary: toBool(r.isPrimary),
        createdAt: new Date(r.createdAt),
        updatedAt: new Date(r.updatedAt),
      },
      update: {
        productId,
        variantId,
        image: r.image,
        thumbnail: r.thumbnail || null,
        altText: r.altText || null,
        sortOrder: toInt(r.sortOrder) ?? 0,
        isPrimary: toBool(r.isPrimary),
        updatedAt: new Date(r.updatedAt),
      },
    });
    count++;
  }
  console.log(`  Seeded ${count} images`);
}

async function seedTopPicks(prodMap: Map<string, number>): Promise<void> {
  let count = 0;
  const records = parseCSV('top_picks.csv');
  for (const r of records) {
    const productId = prodMap.get(r.productId);
    if (!productId) {
      console.warn(`  Skipping top_pick ${r.id}: product ${r.productId} not found`);
      continue;
    }
    await prisma.topPick.upsert({
      where: { csvId: r.id },
      create: {
        csvId: r.id,
        sectionName: r.sectionName,
        sectionSlug: r.sectionSlug,
        productId,
        sortOrder: toInt(r.sortOrder) ?? 0,
        isActive: toBool(r.isActive),
        createdAt: new Date(r.createdAt),
        updatedAt: new Date(r.updatedAt),
      },
      update: {
        sectionName: r.sectionName,
        sectionSlug: r.sectionSlug,
        productId,
        sortOrder: toInt(r.sortOrder) ?? 0,
        isActive: toBool(r.isActive),
        updatedAt: new Date(r.updatedAt),
      },
    });
    count++;
  }
  console.log(`  Seeded ${count} top_picks`);
}

async function seedOffers(): Promise<void> {
  let count = 0;
  const records = parseCSV('offers.csv');
  for (const r of records) {
    await prisma.offer.upsert({
      where: { csvId: r.id },
      create: {
        csvId: r.id,
        title: r.title,
        type: r.type,
        value: toFloat(r.value) ?? 0,
        minOrderValue: toFloat(r.minOrderValue),
        code: r.code,
        isActive: toBool(r.isActive),
        createdAt: new Date(r.createdAt),
        updatedAt: new Date(r.updatedAt),
      },
      update: {
        title: r.title,
        type: r.type,
        value: toFloat(r.value) ?? 0,
        minOrderValue: toFloat(r.minOrderValue),
        code: r.code,
        isActive: toBool(r.isActive),
        updatedAt: new Date(r.updatedAt),
      },
    });
    count++;
  }
  console.log(`  Seeded ${count} offers`);
}

async function main() {
  console.log('Seeding catalog data...\n');

  console.log('1. Categories');
  const catMap = await seedCategories();

  console.log('2. Subcategories');
  const subMap = await seedSubcategories(catMap);

  console.log('3. Brands');
  const brandMap = await seedBrands();

  console.log('4. Products');
  const prodMap = await seedProducts(catMap, subMap, brandMap);

  console.log('5. Variants');
  const varMap = await seedVariants(prodMap);

  console.log('6. Images');
  await seedImages(prodMap, varMap);

  console.log('7. Top Picks');
  await seedTopPicks(prodMap);

  console.log('8. Offers');
  await seedOffers();

  console.log('\nSeed completed successfully.');
}

main()
  .catch((e) => {
    console.error('Seed failed:', e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
