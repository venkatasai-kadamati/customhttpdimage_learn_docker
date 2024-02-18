# dockerfile for building httpd image
# Version: 1.0.0

# Base image
FROM centos:7

# Update the base image packages
RUN yum -y update

# Install dependencies
RUN yum -y install httpd

# Copy the contents into the container ecosystem
COPY ./index.html /var/www/html/index.html

# Expose the port
EXPOSE 80

# Start the httpd service
CMD ["httpd", "-D", "FOREGROUND"]


