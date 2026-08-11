# Node.js 22.18.0+ required for native type stripping support
FROM node:22-slim

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci --prefer-offline

COPY *.ts *.json ./
COPY ./src/ ./src/

RUN npm run build

EXPOSE 8000

CMD ["node", "dist/index.js"]
