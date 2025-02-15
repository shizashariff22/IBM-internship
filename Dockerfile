# Use an official Nginx image as the base image
FROM nginx:latest

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy your website files into the container
COPY index.html .
COPY style.css .
COPY resp.js .
COPY building.jpg .
COPY lap.jpg .

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
