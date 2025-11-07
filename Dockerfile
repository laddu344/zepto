# Use nginx base image
FROM nginx:latest

# Remove default nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy Zepto app files (update the folder name if needed)
COPY zepto/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
