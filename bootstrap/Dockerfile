FROM node:18-alpine3.17
RUN apk add --no-cache curl
WORKDIR /bootstrap
COPY . .
ENTRYPOINT [ "./bootstrap.sh" ]