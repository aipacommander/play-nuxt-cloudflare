FROM node:lts-slim

RUN apt update -y && apt install curl -y
RUN npm install -g wrangler