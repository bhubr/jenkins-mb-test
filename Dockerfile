# use a node base image
FROM node:16-alpine

# set maintainer
LABEL maintainer "benoithubert@gmail.com"

# set workdir
WORKDIR /app

# copy app
COPY src/index.js .

# tell docker what port to expose
EXPOSE 8000

CMD node index