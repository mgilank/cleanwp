#!/bin/bash
owner=$(stat -c '%U' .)

#check exist
rm -rf latest.tar.gz

#ambil file wp
wget wordpress.org/latest.tar.gz
#hapus file core
rm -rf wp-includes
rm -rf wp-admin
rm -rf index.php
rm -rf wp-activate.php
rm -rf wp-blog-header.php
rm -rf wp-comments-post.php
rm -rf wp-cron.php
rm -rf wp-links-opml.php
rm -rf wp-load.php
rm -rf wp-load.php
rm -rf wp-login.php
rm -rf wp-mail.php
rm -rf wp-settings.php
rm -rf wp-signup.php
rm -rf wp-trackback.php
rm -rf xmlrpc.php
rm -rf wp-content/themes/twentyfifteen
rm -rf wp-content/themes/twentynineteen
rm -rf wp-content/themes/twentyseventeen
rm -rf wp-content/themes/twentytwenty

#ekstrak wp
tar -xvf latest.tar.gz
rsync -avzW wordpress/* .
chown -R $owner:$owner *.php
chown -R $owner:$owner wp-includes
chown -R $owner:$owner wp-admin
chown -R $owner:$owner wp-content
chown -R $owner:$owner license.txt
chown -R $owner:$owner readme.html

#clearance
rm -rf wordpress
rm -rf latest.tar.gz
