# Use nginx to serve static HTML, JS, CSS files
FROM nginx:latest

# Copy all files to nginx default public directory
COPY zepto/ /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
