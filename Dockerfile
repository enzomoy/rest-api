FROM node:14.17.1

WORKDIR /app

COPY . /app/

RUN npm install

CMD ["npm", "start"]

EXPOSE 8000