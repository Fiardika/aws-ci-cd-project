# Use the official Nginx image as the base image
FROM 351029054045.dkr.ecr.ap-southeast-1.amazonaws.com/nginx-fiar

# Copy your static website files to the Nginx HTML directory
COPY . /usr/share/nginx/html

# Expose port 80 to make the website accessible
EXPOSE 80

# Start the Nginx service
CMD ["nginx", "-g", "daemon off;"]