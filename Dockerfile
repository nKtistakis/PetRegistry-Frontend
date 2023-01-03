
FROM node:12
WORKDIR /app
COPY . .
RUN npm install
CMD ["npm", "start"]

#FROM node:12 as builder
#COPY package*.json ./

#RUN npm install && mkdir /ui && mv ./node_modules ./ui
#WORKDIR /ui
#COPY . .

#RUN npm run build
#EXPOSE 3000
#ENTRYPOINT ["npm", "start"]

#FROM nginx:alpine
#COPY ./.nginx/nginx.conf /etc/nginx/nginx.conf
#RUN rm -rf /usr/share/nginx/html/*
#COPY --from=builder /ui/build /usr/share/nginx/html
#EXPOSE 3000 80
#ENTRYPOINT ["nginx", "-g", "daemon off;"]

