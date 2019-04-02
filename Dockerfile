FROM node:8

WORKDIR /usr/app

COPY package.json .
RUN npm install --only=production --no-cache

COPY . .
EXPOSE 3000

CMD ["npm", "start"]
