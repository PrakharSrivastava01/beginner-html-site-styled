# Use nginx as base image to serve static HTML
FROM nginx:latest

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy website files to nginx html directory
COPY . /usr/share/nginx/html

# Expose port 99
EXPOSE 99

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
