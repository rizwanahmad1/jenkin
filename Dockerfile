FROM nginx:alpine
ARG BUILD_TAG
COPY ./index.html /usr/share/nginx/html
LABEL build_tag=$BUILD_TAG
