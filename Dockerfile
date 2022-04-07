# syntax=docker/dockerfile:1
# pull base image
FROM node:alpine
# define the working directory as /app inside the client image
WORKDIR /react-app
# copy the package-lock.json and package.json from the computer to /react-app on the image
COPY ./react-app/package.json ./
COPY ./react-app/package-lock.json ./
# copy everything from our client root folder to the client container’s working directory
COPY ./react-app/ ./
# install dependencies within container
RUN npm i
# start the app
CMD ["npm", "run", "start"]
