# Use Alpine Linux 3.18.3 as the base image
FROM alpine:3.18.3

# Set working directory
WORKDIR /usr/share/nginx/html

# Copy the HTML file into the container
COPY index.html .

# Expose port 80
EXPOSE 80

# Command to start serving the HTML file using a simple HTTP server
CMD ["sh", "-c", "echo '<h1>Hello, World!</h1>' > index.html && echo 'Starting HTTP server...' && httpd -f -p 80 -h /usr/share/nginx/html"]
