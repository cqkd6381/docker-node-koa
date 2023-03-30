# syntax=docker/dockerfile:1
   
FROM node:18-alpine
WORKDIR /app
COPY . .
RUN npm install --registry=https://registry.npm.taobao.org
CMD ["node", "koa.cjs"]
EXPOSE 3000