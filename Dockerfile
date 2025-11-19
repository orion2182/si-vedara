#use alpine linux as foundation
FROM alpine:latest

#install nginx for serve static file
RUN apk --no-cache add nginx

#make directory for application file
WORKDIR /usr/share/nginx/html

#copy file html and css from local folder to container
COPY . .

#setting nginx for open port 80
EXPOSE 80

#start nginx
CMD ["nginx", "-g", "daemon off;"]