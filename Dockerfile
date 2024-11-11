FROM node:20-alpine

LABEL maintainer="MinTHetHtun"
LABEL version="1.0"
LABEL description="This is a dockerfile for node.js application."

WORKDIR /app

COPY package.* ./

RUN npm i

COPY . .

RUN npm run build

EXPOSE 3000
CMD [ "npm","start" ]

#instruction to build the image
#docker build -t next-app .
#docker run -p 3000:3000 -d --name next-app nextjs-app