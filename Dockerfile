FROM node:20

WORKDIR /todo-app
COPY package.json .
RUN npm install
COPY . .

EXPOSE 3000

RUN npm run build

CMD npx serve -s ./dist  -l 3000 
