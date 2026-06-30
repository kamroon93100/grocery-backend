const fs = require("fs");
const path = require("path");
const https = require("https");
const sharp = require("sharp");

const fixes = [
["red-label-tea-250-g.webp","https://i.pinimg.com/736x/7c/4e/49/7c4e4920ad5273f63baf27d77546bcc9.jpg"],
["coca-cola-soft-drink-750-ml.webp","https://i.pinimg.com/1200x/ef/75/7a/ef757a0d9322a1259bf17838bfe84126.jpg"],
["pepsi-soft-drink-750-ml.webp","https://i.pinimg.com/736x/f5/4b/fa/f54bfa6042a3a58411e74635dd9999bc.jpg"],
["sprite-lemon-drink-750-ml.webp","https://i.pinimg.com/736x/9e/83/6a/9e836a609f803a14d0f9fc54d9a1e671.jpg"],
["surf-excel-easy-wash-1-kg.webp","https://i.pinimg.com/736x/3d/18/aa/3d18aa7c15e1d0184d0c3a26e6deb17f.jpg"],
["lay-s-magic-masala-chips-52-g.webp","https://i.pinimg.com/1200x/ab/b1/0f/abb10f14869b3ef8c6a5c7071c747742.jpg"],
["maggi-2-minute-noodles-70-g.webp","https://i.pinimg.com/736x/10/d7/7c/10d77cce546927b76f0f9b73f1b0c34a.jpg"],
["dettol-antiseptic-liquid-550-ml.webp","https://i.pinimg.com/736x/80/61/d5/8061d5255df559ca0ba5830fd344b573.jpg"],
["dove-cream-beauty-bathing-bar-125-g.webp","https://i.pinimg.com/736x/4b/bb/8a/4bbb8aaff1c86ef2f0138761451e205f.jpg"],
["pears-pure-gentle-soap-125-g.webp","https://i.pinimg.com/736x/11/aa/82/11aa82ba079e973dbd84528b2390e2b6.jpg"],
["clinic-plus-strong-long-shampoo-340-ml.webp","https://i.pinimg.com/736x/e9/be/67/e9be6742f0109a599d1d13e4745ca147.jpg"],
["head-shoulders-anti-dandruff-shampoo-340-ml.webp","https://i.pinimg.com/1200x/e5/27/2b/e5272ba2b6cc698da07ba0e21dcecd94.jpg"],
["nivea-soft-light-moisturiser-200-ml.webp","https://i.pinimg.com/1200x/05/dd/63/05dd632b3508f282dcd417d0bc0dadce.jpg"],
["dabur-red-toothpaste-200-g.webp","https://i.pinimg.com/1200x/02/95/ed/0295ed10be669fe5242e693643d046b4.jpg"],
["pampers-active-baby-diapers-medium-20-pcs.webp","https://i.pinimg.com/736x/57/fd/36/57fd361c4fda54f8852f921c13750cc6.jpg"],
["cerelac-wheat-cereal-300-g.webp","https://i.pinimg.com/736x/57/1d/1d/571d1de99590bc88348f4dc61eb6e31f.jpg"],
["red-bull-energy-drink-250-ml.webp","https://i.pinimg.com/1200x/a6/9c/df/a69cdf9732cb9f305b524695be3c3784.jpg"]
];

const outDir = path.join(process.cwd(), "public", "uploads", "products");
const tmpDir = path.join(process.cwd(), "image_fix_tmp");
fs.mkdirSync(outDir, { recursive: true });
fs.mkdirSync(tmpDir, { recursive: true });

function download(url, dest) {
  return new Promise((resolve, reject) => {
    const file = fs.createWriteStream(dest);
    https.get(url, { headers: { "User-Agent": "Mozilla/5.0" } }, res => {
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
  for (const [file, url] of fixes) {
    const raw = path.join(tmpDir, file + ".jpg");
    const out = path.join(outDir, file);
    console.log("Fixing", file);
    await download(url, raw);
    await sharp(raw)
      .resize(800, 800, { fit: "contain", background: { r:255, g:255, b:255, alpha:0 } })
      .webp({ quality: 88 })
      .toFile(out);
  }
  console.log("DONE fixed wrong images");
})();
