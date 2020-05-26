#!/bin/sh

/etc/init.d/supervisor start
echo "Install UTM"
sudo dpkg -i u-trans-3_0_8.deb
/etc/init.d/supervisor stop

echo "Startings Supervisor"
/usr/bin/supervisord -c /etc/supervisor/supervisord.conf -n