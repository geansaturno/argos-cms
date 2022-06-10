FROM node:16

RUN mkdir ./argos-cms

WORKDIR ./argos-cms

ADD . .

ENV SESSION_SECRET="argos-cms@1248asdiouklfgnerhjhasdhghpásldç*"
ENV HOST_NAME="argosdb"

RUN npm ci

RUN npm run build

EXPOSE 3000