# Use the latest Ubuntu image
FROM ubuntu:latest

# Update package list and install MySQL server
RUN apt-get update && apt-get install -y mysql-server

# Ensure MySQL can run as a service
RUN mkdir -p /var/run/mysqld && chown -R mysql:mysql /var/run/mysqld

# Set environment variables for MySQL
ENV MYSQL_ROOT_PASSWORD=my-pw
ENV MYSQL_DATABASE=mydatabase

# Expose MySQL port
EXPOSE 3306

# Start MySQL server
CMD ["mysqld"]