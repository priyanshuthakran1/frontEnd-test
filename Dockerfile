# frontEnd-test/Dockerfile
FROM nginx:alpine            # lightweight Nginx base

# copy every file in repo into Nginx html folder
COPY . /usr/share/nginx/html/

EXPOSE 80                    # Nginx listens inside container on 80
CMD ["nginx", "-g", "daemon off;"]
