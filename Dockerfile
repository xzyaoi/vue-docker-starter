FROM mhart/alpine-node:latest

WORKDIR ./app

RUN npm --user root --unsafe-perm true install npm -g

RUN npm install -g --silent \
    yarn \
    vue-cli

EXPOSE 8080

CMD ["npm", "run", "dev"]
