!/bin/bash

# Define variables
DB_ROOT_PASSWORD="root"
DB_NAME="hacker"
DB_USER="root"
DB_PASSWORD="root"
DOMAIN_NAME="localhost.lan"
ADMIN_EMAIL="nsr@localhost"
WORDPRESS_DIR="/var/www/html"

# Update system packages
sudo apt update -y
sudo apt upgrade -y


# Add the repository
sudo add-apt-repository ppa:ondrej/php
sudo apt update

# Install PHP 8.0 and related packages
sudo apt install php8.0 php8.0-mysql php8.0-curl php8.0-gd php8.0-json php8.0-mbstring php8.0-intl php8.0-bz2 php8.0-xmlrpc php8.0-xsl php8.0-zip -y



# Install LAMP stack (Linux, Apache, MariaDB, PHP)
sudo apt install apache2 mariadb-server php8.0 php8.0-mysql php8.0-curl php8.0-gd php8.0-json php8.0-mbstring php8.0-intl php8.0-bz2 php8.0-xmlrpc php8.0-xsl php8.0-zip -y

# Secure MariaDB installation
sudo mysql_secure_installation

# Create a WordPress database and user
sudo mysql -u root -p $DB_ROOT_PASSWORD <<EOF
CREATE DATABASE $DB_NAME;
GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASSWORD';
FLUSH PRIVILEGES;
EXIT;
EOF

# Download and configure WordPress
sudo wget https://wordpress.org/latest.tar.gz -P /tmp
sudo tar -zxvf /tmp/latest.tar.gz -C /tmp
sudo mv /tmp/wordpress/* $WORDPRESS_DIR
sudo cp $WORDPRESS_DIR/wp-config-sample.php $WORDPRESS_DIR/wp-config.php
sudo sed -i "s/database_name_here/$DB_NAME/" $WORDPRESS_DIR/wp-config.php
sudo sed -i "s/username_here/$DB_USER/" $WORDPRESS_DIR/wp-config.php
sudo sed -i "s/password_here/$DB_PASSWORD/" $WORDPRESS_DIR/wp-config.php
sudo chown -R www-data:www-data $WORDPRESS_DIR
sudo chmod -R 755 $WORDPRESS_DIR

# Configure Apache virtual host for WordPress
sudo tee /etc/apache2/sites-available/$DOMAIN_NAME.conf <<EOF
<VirtualHost *:80>
    ServerAdmin $ADMIN_EMAIL
    DocumentRoot $WORDPRESS_DIR
    ServerName $DOMAIN_NAME
    ServerAlias www.$DOMAIN_NAME
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
EOF

# Enable the site and restart Apache
sudo a2ensite $DOMAIN_NAME.conf
sudo a2enmod rewrite
sudo systemctl restart apache2

# Clean up temporary files
sudo rm -rf /tmp/latest.tar.gz /tmp/wordpress

# Display WordPress installation completion message
echo "WordPress has been successfully installed at http://$DOMAIN_NAME"

