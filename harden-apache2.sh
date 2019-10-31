
# apache2-basics : directories, ports & commands

    # Document root Directory:            /var/www/html or /var/www

    # Main Configuration file:            /etc/httpd/conf/httpd.conf (RHEL/CentOS/Fedora)
    #                                     /etc/apache2/apache2.conf (Debian/Ubuntu).

    # Default HTTP Port:                  80 TCP
    # Default HTTPS Port:                 443 TCP

    # Test your Configuration
    # file settings and syntax:           httpd -t

    # Access Log files of Web Server:     /var/log/httpd/access_log
    # Error Log files of Web Server:      /var/log/httpd/error_log

# End of apache2-basics
# _____________________

# apache2 hardening for ubuntu 18.04

# Create seperate User and Usergroup for apache2
sudo groupadd http-web
sudo useradd -d /var/www/ -g http-web -s /bin/nologin http-web

# edit the configuration file ...
nano /etc/apache2/apache2.conf

# Run Apache as separate User and Group
User http-web
Group http-web

# Hide Apache Version and OS Identity from Errors
ServerSignature Off
ServerTokens Prod

# Disable Directory Listing (add this entry)
<Directory /var/www/html>
    Options -Indexes
</Directory>
