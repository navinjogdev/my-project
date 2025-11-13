# Use a small nginx image to serve static HTML
FROM nginx:stable-alpine

# Remove default nginx content and copy our site
RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html/index.html

# Expose default HTTP port
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
