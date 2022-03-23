# syntax docker/dockerfile:1

FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf
CMD [ "/bin/sh -c 'while :; do sleep 6h & wait $${!}; nginx -s reload; done & nginx -g \"daemon off;\"'" ]

EXPOSE 6080
EXPOSE 5080
EXPOSE 4080