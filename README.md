# RoboCup Logistics League OpenCart Webshop

OpenCart usage in RoboCup Logistics League

## CREDENTIALS:

|              |Account                     |Password |
|--------------|----------------------------|---------|
|opencart-admin|admin                       |admin    |
|opencart-user |spectator.audience@gmail.com|pass     |
|mysql-root    |root                        |Ro0t.123 |
|gmail         |spectator.audience@gmail.com|rcll.demo|



## DEPENDENCIES:
* ROS (>= kinetic)
* Rcll-RefBox (http://www.robocup-logistics.org/refbox)
* php
* mysql databse system
* apache webserver
* opencart

## SETUP DATABASE:
1.  Make sure your Database setup matches the Credentials.

## SETUP WEBSHOP:
1.  Copy the opencart folder from opencart_restore into the web-root of your webserver.
    (e.g. /var/www/http)
  - Make sure the opencart folder has the correct read and write access (refer to opencart installation)
2.  Change the user and group of the opencart folder to the webdeamons user. For example:
    ```bash
    $ cd /var/www/http 
    $ chown apache opencart 
    $ chgrp apache opencart
     ```
3. Ensure the webdeamons access policies when you are using SELinux. For example:
   ```bash
   $ setsebool -P httpd_unified 1
   ```
4. Enable server to send E-Mails. For example:
   ```bash
   $ setsebool -P httpd_can_sendmail 1
   ```
5.  Make sure there is no database called opencart_ros yet and read sqldump to database system. For example:
    ```bash
    $ mysql -u root -p < opencart_ros.sql
    ```


## SETUP REFBOX
1. Build RefBox according to the install instructions:
   [RCLL Refbox](https://github.com/robocup-logistics/rcll-refbox/wiki/Install)
   
2. Enable Webshop in rcll-refbox-path>/cfg/config.yaml :

```yaml
webshop:
        enable: true
```

## SETUP ROS 
1. Copy ROS Packages opencart_refbox and ros_opencart into a catkin workspace.
2. Define an environment variable RCLL_REFBOX_DIR:

```bash
$ export RCLL_REFBOX_DIR=<path-to/your-refbox-directory>
```

3. Build catkin workspace with:

```bash
$ catkin_make -DREFBOX_PATH=<path-to/your-refbox-directory>
```

KNOWN PITFALLS:
        Disable SELinux temporarily for opencart installation
        Make sure all read/write options are properly set up (chmod 0755) for opencart as well as
        the webshop

