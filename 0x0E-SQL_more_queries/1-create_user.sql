#!/bin/bash

# MySQL credentials
MYSQL_USER="your_mysql_username"
MYSQL_PASSWORD="your_mysql_password"

# Check if the user already exists
EXISTING_USER=$(mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "SELECT COUNT(*) FROM mysql.user WHERE user = 'user_0d_1'" -N)

if [ "$EXISTING_USER" -eq 0 ]; then
  # Create the user
  mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "CREATE USER 'user_0d_1'@'localhost' IDENTIFIED BY 'user_0d_1_pwd';"
  
  # Grant all privileges
  mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost' WITH GRANT OPTION;"
  
  # Apply changes
  mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "FLUSH PRIVILEGES;"
  
  echo "User 'user_0d_1' created with all privileges."
else
  echo "User 'user_0d_1' already exists. No changes made."
fi
