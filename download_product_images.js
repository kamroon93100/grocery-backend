const fs = require("fs");
const path = require("path");
const http = require("http");
const https = require("https");
const sharp = require("sharp");

const linkText = fs.readFileSync("C:/GroceryApp/image_links.txt", "utf8");
const links = linkText.match(/https?:\/\/[^\s]+/g) || [];

const outDir = path.join(process.cwd(), "public", "uploads", "products");
const tmpDir = path.join(process.cwd(), "image_tmp");
fs.mkdirSync(outDir, { recursive: true });
fs.mkdirSync(tmpDir, { recursive: true });

function slugify(name) {
  return name.toLowerCase()
    .replace(/&/g, "and")
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-+|-+$/g, "") + ".webp";
}

function getApiProducts() {
  return new Promise((resolve, reject) => {
    http.get("http://127.0.0.1:3001/api/products?page=1&limit=200", res => {
      let data = "";
      res.on("data", chunk => data += chunk);
      res.on("end", () => {
        try {
          const body = JSON.parse(data);
          const list = Array.isArray(body) ? body :
            body.items || body.products || body.data?.items || body.data || [];
          resolve(list);
        } catch (e) {
          reject(e);
        }
      });
    }).on("error", reject);
  });
}

function getFileName(product) {
  const imgs = product.images || [];
  let raw = "";

  if (imgs.length && typeof imgs[0] === "object") {
    raw = imgs[0].imageUrl || imgs[0].url || imgs[0].image || "";
  } else if (imgs.length) {
    raw = String(imgs[0]);
  }

  if (!raw) return slugify(product.name || product.title || "product");

  raw = raw.split("?")[0].split("/").pop();
  if (!raw.endsWith(".webp")) raw = raw.replace(/\.[^.]+$/, "") + ".webp";
  return raw;
}

function download(url, dest) {
  return new Promise((resolve, reject) => {
    const client = url.startsWith("https") ? https : http;
    const file = fs.createWriteStream(dest);

    client.get(url, { headers: { "User-Agent": "Mozilla/5.0" } }, res => {
      if (res.statusCode >= 300 && res.statusCode < 400 && res.headers.location) {
        file.close();
        return download(res.headers.location, dest).then(resolve).catch(reject);
      }

      if (res.statusCode !== 200) {
        file.close();
        return reject(new Error("HTTP " + res.statusCode));
      }

      res.pipe(file);
      file.on("finish", () => file.close(resolve));
    }).on("error", reject);
  });
}

(async () => {
  const products = await getApiProducts();
  const count = Math.min(products.length, links.length);

  console.log("Products from API:", products.length);
  console.log("Links found:", links.length);
  console.log("Mapping:", count);

  const mapping = [];

  for (let i = 0; i < count; i++) {
    const fileName = getFileName(products[i]);
    const rawPath = path.join(tmpDir, `${i}.jpg`);
    const outPath = path.join(outDir, fileName);

    console.log(`${i + 1}. ${products[i].name} -> ${fileName}`);

    try {
      await download(links[i], rawPath);
      await sharp(rawPath)
        .resize(800, 800, {
          fit: "contain",
          background: { r: 255, g: 255, b: 255, alpha: 0 }
        })
        .webp({ quality: 88 })
        .toFile(outPath);

      mapping.push(`${i + 1},"${products[i].name}","${fileName}","${links[i]}"`);
    } catch (e) {
      console.log("FAILED:", fileName, e.message);
      mapping.push(`${i + 1},"${products[i].name}","FAILED","${links[i]}"`);
    }
  }

  fs.writeFileSync("image_mapping.csv", "index,product,file,url\n" + mapping.join("\n"));
  console.log("DONE. Images saved to public/uploads/products");
})();
