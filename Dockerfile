FROM node:22.15-alpine3.21
WORKDIR /app
COPY package.json package-lock.json /app/
RUN npm ci
COPY ./es-minecraftrcon-nodejs .
RUN npm run build
EXPOSE 3000
CMD ["node", "/app/build/index.js"]
