FROM node:18

RUN npm install --global pnpm

WORKDIR /app

COPY package.json pnpm-lock.yaml ./
RUN pnpm install

COPY hello.js ./

CMD pnpm test
