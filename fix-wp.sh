#!/bin/bash

# WordPress Permission Fixer Script
# Author: Sheikh Alamin
# Use this to fix "Permission Denied" errors in WordPress

# Define your WordPress Path (Default: /var/www/html)
WP_PATH="/var/www/html"

echo "Fixing Permissions for WordPress at $WP_PATH..."

# 1. Set Ownership to Web Server User (www-data)
sudo chown -R www-data:www-data $WP_PATH

# 2. Set Directory Permissions to 755
sudo find $WP_PATH -type d -exec chmod 755 {} \;

# 3. Set File Permissions to 644
sudo find $WP_PATH -type f -exec chmod 644 {} \;

echo "------------------------------------------------"
echo "Success! Permissions have been reset."
echo "You can now upload files and install plugins."
echo "------------------------------------------------"
