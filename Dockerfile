FROM nginx:alpine
RUN echo "building image"
COPY . /usr/share/nginx/html
