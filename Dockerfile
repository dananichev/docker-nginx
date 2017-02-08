FROM nginx:mainline-alpine

RUN mkdir /ssl
RUN mkdir /projects

VOLUME ["/ssl", "/projects"]

COPY ./dhparam.pem /etc/nginx/

RUN \
	nginx -V

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]

