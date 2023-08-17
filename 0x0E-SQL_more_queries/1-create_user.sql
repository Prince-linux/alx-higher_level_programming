-- Check if the user already exists
SET @user_exists = (SELECT COUNT(*) FROM mysql.user WHERE user = 'user_0d_1' AND host = 'localhost');

-- Create the user if it doesn't exist
IF @user_exists = 0 THEN
    CREATE USER 'user_0d_1'@'localhost' IDENTIFIED BY 'user_0d_1_pwd';
END IF;

-- Grant all privileges to the user
GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost';
