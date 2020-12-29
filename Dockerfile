FROM node:13.12.0-alpine AS base

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY /app ./
RUN npm install --silent

CMD ["npm", "start"]