# Use nginx with Alpine as the base image
FROM nginx:alpine

# Install Certbot and the Nginx plugin
RUN apk add --no-cache certbot certbot-nginx

# Define a build argument to specify the config file to copy
ARG NGINX_CONF=prd.conf

# Copy the selected configuration file into the container
COPY ./default.conf /etc/nginx/conf.d/default.conf
