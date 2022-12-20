FROM node:latest
WORKDIR /app
COPY package.json ./package.json
#COPY package-lock.json ./package-lock.json
RUN npm ci
COPY . .
EXPOSE 3000
CMD npm start
