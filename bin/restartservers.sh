#!/bin/bash
sudo rm -rf /var/run/nginx-fastcgi-cache/
php /var/www/tekom/vendor/bin/typo3cms cache:flush
sudo /etc/init.d/nginx restart
sudo /etc/init.d/php7.2-fpm restart
sudo /etc/init.d/mysql restart
