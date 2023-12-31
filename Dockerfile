# syntax docker/dockerfile:1

FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 7080
EXPOSE 6080
EXPOSE 5080
EXPOSE 4080

CMD ["nginx", "-g", "daemon off;"]
