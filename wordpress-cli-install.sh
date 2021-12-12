#!/bin/bash
set -x

curl -q https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar > /usr/local/bin/wp
chmod +x /usr/local/bin/wp
sed -i 's/www-data:x:33:33:www-data:\/var\/www:\/usr\/sbin\/nologin/www-data:x:33:33:www-data:\/var\/www:\/bin\/bash/g' /etc/passwd
curl -q https://raw.githubusercontent.com/wp-cli/wp-cli/master/utils/wp-completion.bash > /var/www/wp-completion.bash
echo "source /var/www/wp-completion.bash" >> /var/www/.bash_profile
