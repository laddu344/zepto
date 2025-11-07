FROM nginx:latest

# Remove default nginx files
RUN rm -rf /usr/share/nginx/html/*

# Copy your Zepto app files from test/ folder
COPY test/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
