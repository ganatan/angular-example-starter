FROM nginx:alpine
RUN apk update \
    && apk upgrade \
    && apk add --no-cache bash
RUN rm /etc/nginx/conf.d/default.conf
RUN chown -R nginx:nginx /usr/share/nginx/html
RUN ls -l /home
COPY ./nginx.conf /etc/nginx/conf.d/
COPY /home/runner/work/angular-starter/angular-starter/dist /usr/share/nginx/html

EXPOSE 8080
