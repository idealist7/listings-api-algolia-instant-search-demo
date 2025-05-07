FROM node:24.0.0

WORKDIR /site

# start with dependencies to enjoy caching
COPY ./package.json /site/package.json
COPY ./package-lock.json /site/package-lock.json
RUN npm ci

# copy rest and build
COPY . /site/.
RUN --mount=type=secret,id=.env env $(cat /run/secrets/.env | xargs) npm run build