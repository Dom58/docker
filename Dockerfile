FROM node:19-alpine
WORKDIR /covid_docker
COPY package.json yarn.lock ./
RUN yarn --frozen-lockfile
COPY . .
EXPOSE 4000
CMD yarn start
