FROM node:18
WORKDIR /app
COPY ./ ./
RUN npm install
RUN npm node index.js
EXPOSE 3500
