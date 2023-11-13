FROM node:18

WORKDIR /usr/src/app

COPY apps/web/package*.json .

RUN npm install
RUN npm install -g next

COPY apps/web .

EXPOSE 3000

CMD [ "npm", "run", "dev" ]
