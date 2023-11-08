# This file is primarily for building the production image

FROM nginx
COPY src /usr/share/nginx/html
