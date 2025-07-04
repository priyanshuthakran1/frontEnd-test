# Use a tiny web‑server image
FROM nginx:alpine

# Copy our page into the default nginx html folder
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 (inside container)
EXPOSE 80

# Run nginx in the foreground so the container stays alive
CMD ["nginx", "-g", "daemon off;"]
