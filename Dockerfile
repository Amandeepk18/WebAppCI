# Use the official Nginx base image
FROM nginx:latest

# Copy the web pages to the Nginx web root directory
COPY index.html /usr/share/nginx/html/
COPY about.html /usr/share/nginx/html/
COPY portfolio.html /usr/share/nginx/html/

# Expose port 80 to access the web server
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
