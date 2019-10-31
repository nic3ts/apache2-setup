
# download site on apache root folder
sudo git clone https://github.com/nic3ts/nic3ts.com /var/www/nic3ts.com

# gain cv-site user ownership
sudo chown -R $USER:$USER /var/www/nic3ts.com

# copy virtual host configuration
sudo cp -r assets/nic3ts.com.conf /etc/apache2/sites-available/nic3ts.com.conf

# enable site
sudo a2ensite nic3ts.com.conf
