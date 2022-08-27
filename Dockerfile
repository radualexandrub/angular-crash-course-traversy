FROM node:16

WORKDIR /app

COPY package*.json ./

RUN npm install

RUN npm install -g @angular/cli

COPY . .

ENV PORT=4200

EXPOSE 4200

CMD ["sh", "-c", "ng serve --host=0.0.0.0"]