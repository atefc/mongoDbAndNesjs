FROM node:15.5.0-alpine3.10
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm i
COPY . ./
EXPOSE 3000
CMD ["npm","start"]
