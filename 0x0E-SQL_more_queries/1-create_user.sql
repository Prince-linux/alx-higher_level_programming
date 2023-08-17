-- Connect to the MySQL server
-- Replace 'username' and 'password' with appropriate credentials
mysql -u username -p

-- Create user user_0d_1
CREATE USER 'user_0d_1'@'localhost' IDENTIFIED BY 'password_here';

-- Grant privileges to user_0d_1
GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost' WITH GRANT OPTION;

-- Flush privileges to apply changes
FLUSH PRIVILEGES;

-- Exit the MySQL client
exit;
