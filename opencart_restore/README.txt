CREDENTIALS:
opencart-admin: admin admin
opencart-user: spectator.audience@gmail.com pass
mysql-root: root Ro0t.123
gmail: spectator.audience@gmail.com rcll.demo


DEPENDENCIES:
* ROS (>= kinetic)
* Rcll-RefBox (http://www.robocup-logistics.org/refbox)
* php
* mysql databse system (or other opencart compatible database)
* apache webserver (or other opencart compatible webserver))


RESTORE OPENCART:
1.  Copy opencart forlder to the web-root of your webserver.
    (e.g. /var/www/http)
2.  Change the user and group of the opencart folder to the webdeamons user .
    (e.g. #> cd /var/www/http 
          #> chown apache opencart 
          #> chgrp apache opencart)
2b. Ensure the webdeamons access policies when you are using SELinux.
2c. Enable server to send E-Mails
    (e.g. #> setsebool -P httpd_can_sendmail 1)
3.  Make sure there is no database called opencart_ros yet and read sqldump to 
    database system.
    (e.g. #> mysql -u root -p < opencart_ros.sql)


RefBox and Connection Nodes:
1. Build RefBox according to the install instructions:
   https://github.com/robocup-logistics/rcll-refbox/wiki/Install
2. Build catkin workspace with
   #> catkin_make -DREFBOX_PATH=<rcll-refbox-path>
