\# Backend Deployment



\## Platform



Render



\## Stack



\- NestJS

\- Prisma

\- PostgreSQL



\## Build



```bash

npm install

npx prisma generate

npm run build

```



\## Start



```bash

npm run start:prod

```



\## Production Flow



```text

GitHub

&#x20;    ↓

Render

&#x20;    ↓

Install

&#x20;    ↓

Generate Prisma

&#x20;    ↓

Build

&#x20;    ↓

Start API

```

