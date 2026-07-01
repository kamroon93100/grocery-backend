const fs = require("fs");
const path = require("path");
const http = require("http");
const https = require("https");
const sharp = require("sharp");

const names = [
"Fresh Banana Robusta 1 Dozen","Apple Royal Gala 4 Pcs","Orange Nagpur 1 Kg","Pomegranate 2 Pcs","Papaya Semi Ripe 1 Pc","Mango Alphonso 1 Kg","Watermelon 1 Pc","Pineapple 1 Pc","Guava 500 g","Kiwi 3 Pcs","Grapes Green Seedless 500 g","Strawberry 200 g","Tomato Hybrid 1 Kg","Potato Fresh 1 Kg","Onion Red 1 Kg","Cauliflower 1 Pc","Cabbage Green 1 Pc","Capsicum Green 250 g","Cucumber 500 g","Carrot Orange 500 g","Beetroot 500 g","Lady Finger 500 g","Brinjal Bharta 500 g","Spinach 1 Bunch","Coriander Leaves 1 Bunch","Mint Leaves 1 Bunch","Green Chilli 100 g","Ginger 250 g","Garlic 250 g","Lemon 500 g","Amul Gold Full Cream Milk 500 ml","Amul Taaza Toned Milk 500 ml","Amul Fresh Paneer 200 g","Amul Butter 100 g","Amul Cheese Slices 200 g","Mother Dairy Curd 400 g","Britannia Cheese Cubes 200 g","Harvest Gold White Bread 350 g","Britannia Brown Bread 400 g","English Muffins 4 Pcs","Farm Fresh Eggs 6 Pcs","Farm Fresh Eggs 12 Pcs","India Gate Basmati Rice 5 Kg","Aashirvaad Atta 5 Kg","Fortune Chakki Fresh Atta 10 Kg","Tata Sampann Toor Dal 1 Kg","Moong Dal 1 Kg","Chana Dal 1 Kg","Rajma Chitra 1 Kg","Kabuli Chana 1 Kg","Fortune Sunflower Oil 1 L","Fortune Mustard Oil 1 L","Saffola Gold Oil 1 L","Aashirvaad Salt 1 Kg","Tata Salt 1 Kg","Everest Garam Masala 100 g","MDH Kitchen King 100 g","Tata Tea Gold 500 g","Bru Instant Coffee 100 g","Nescafe Classic 100 g","Maggi 2 Minute Noodles 280 g","Yippee Magic Masala Noodles","Kissan Mixed Fruit Jam 500 g","Nutella Hazelnut Spread 350 g","Kellogg's Corn Flakes 875 g","Quaker Oats 1 Kg","Parle G Biscuits 800 g","Good Day Cashew Cookies 600 g","Hide & Seek Chocolate 200 g","Lay's Magic Masala Chips 52 g","Kurkure Masala Munch 90 g","Haldiram Bhujia 400 g","Coca Cola 2.25 L","Pepsi 2.25 L","Sprite 2.25 L","Thumbs Up 2.25 L","Real Mixed Fruit Juice 1 L","Tropicana Orange Juice 1 L","Bisleri Water 1 L","Surf Excel Easy Wash 1 Kg","Ariel Matic Top Load 1 Kg","Tide Plus Double Power 1 Kg","Comfort Fabric Conditioner 860 ml","Vim Dishwash Bar 300 g","Vim Dishwash Liquid 750 ml","Lizol Citrus Floor Cleaner 1 L","Harpic Power Plus Toilet Cleaner 1 L","Dettol Antiseptic Liquid 550 ml","Colgate Strong Teeth Toothpaste 200 g","Dabur Red Toothpaste 200 g","Dove Cream Beauty Bathing Bar 125 g","Pears Pure Gentle Soap 125 g","Clinic Plus Strong & Long Shampoo 340 ml","Head & Shoulders Anti Dandruff Shampoo 340 ml","Nivea Soft Light Moisturiser 200 ml","Pampers Active Baby Diapers Medium 20 Pcs","Johnson's Baby Powder 200 g","Cerelac Wheat Cereal 300 g","Pedigree Adult Dog Food 3 Kg","Whiskas Ocean Fish Cat Food 1.2 Kg"
];

const text = fs.readFileSync("image_links.txt","utf8");
const links = text.match(/https?:\/\/[^\s]+/g) || [];
const outDir = path.join(process.cwd(),"public","uploads","products");
const tmpDir = path.join(process.cwd(),"image_tmp_fix");
fs.mkdirSync(outDir,{recursive:true});
fs.mkdirSync(tmpDir,{recursive:true});

function norm(s){return String(s).toLowerCase().replace(/&/g,"and").replace(/[^a-z0-9 ]+/g," ").replace(/\b(g|kg|ml|l|pc|pcs|dozen|fresh|pure|shudh|original)\b/g," ").replace(/\s+/g," ").trim();}
function score(a,b){const A=new Set(norm(a).split(" ").filter(Boolean));const B=new Set(norm(b).split(" ").filter(Boolean));let hit=0;for(const x of A) if(B.has(x)) hit++;return hit / Math.max(1, Math.min(A.size,B.size));}
function getFileName(p){const img=(p.images||[])[0];let raw=typeof img==="object"?(img.imageUrl||img.url||img.image||""):String(img||"");raw=raw.split("?")[0].split("/").pop();return raw || norm(p.name).replace(/ /g,"-")+".webp";}
function getProducts(){return new Promise((res,rej)=>http.get("http://127.0.0.1:3001/api/products?page=1&limit=200",r=>{let d="";r.on("data",c=>d+=c);r.on("end",()=>{const b=JSON.parse(d);res(b.items||b.products||b.data?.items||b.data||b);});}).on("error",rej));}
function download(url,dest){return new Promise((res,rej)=>{const f=fs.createWriteStream(dest);https.get(url,{headers:{"User-Agent":"Mozilla/5.0"}},r=>{if(r.statusCode!==200){f.close();return rej(new Error("HTTP "+r.statusCode));}r.pipe(f);f.on("finish",()=>f.close(res));}).on("error",rej);});}

(async()=>{
 const products=await getProducts();
 const rows=[];
 for(const p of products){
   let best=0, bestI=-1;
   for(let i=0;i<names.length;i++){const s=score(p.name,names[i]); if(s>best){best=s;bestI=i;}}
   const url=links[bestI];
   const file=getFileName(p);
   console.log(`${p.name} <= ${names[bestI]} (${Math.round(best*100)}%)`);
   if(!url){rows.push(`"${p.name}","NO_URL","${file}"`);continue;}
   try{
     const raw=path.join(tmpDir,file+".jpg");
     await download(url,raw);
     await sharp(raw).resize(800,800,{fit:"contain",background:{r:255,g:255,b:255,alpha:0}}).webp({quality:88}).toFile(path.join(outDir,file));
     rows.push(`"${p.name}","${names[bestI]}","${file}"`);
   }catch(e){console.log("FAILED",p.name,e.message);rows.push(`"${p.name}","FAILED","${file}"`);}
 }
 fs.writeFileSync("image_name_mapping.csv","api_product,mapped_source,file\n"+rows.join("\n"));
 console.log("DONE name-based image remap");
})();
