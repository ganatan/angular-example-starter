FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/ 
COPY dist/angular-starter /usr/share/nginx/html/

RUN chown -R nginx:nginx /etc/nginx/conf.d/ &&\
    chown -R nginx:nginx /usr/share/nginx/html/ &&\
    chown -R nginx:nginx /var/run/nginx.pid &&\
    rm /etc/nginx/conf.d/default.conf &&\
    touch /var/run/nginx.pid
     
EXPOSE 8080

ENTRYPOINT ["nginx", "-g", "daemon off;"]
