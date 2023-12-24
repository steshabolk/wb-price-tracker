ARG NODE_ENV

FROM node:lts-alpine3.16 as build
WORKDIR /frontend
COPY package*.json ./
RUN npm install
COPY . .
ARG NODE_ENV=development
RUN npm run build -- --mode $NODE_ENV

FROM nginx:1.16.0-alpine
COPY --from=build /frontend/dist /usr/share/nginx/html
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d
EXPOSE 8088
CMD ["nginx", "-g", "daemon off;"]