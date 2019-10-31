
# dependencies
sudo apt-get install -y apache2 git

# clean up apache html root folder
sudo rm -rf /var/www/*

# disable 000-default
sudo a2dissite 000-default.conf

# reload apache
sudo systemctl reload apache2
