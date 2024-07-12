# This file is primarily for building the production image

FROM nginx:1.26

ENV TZ=Europe/Stockholm

COPY src /usr/share/nginx/html
