#!/bin/sh

echo ============= PARSDEV CUSTOM CAPRI INSTALLATION
echo ============= @ 2016
rm -rf fix.sh
curl https://raw.githubusercontent.com/alisalehiman/capri/master/files_user.conf > /usr/local/directadmin/data/skins/capri/files_user.conf
curl https://raw.githubusercontent.com/alisalehiman/capri/master/lang/en/user/show_domain.html > /usr/local/directadmin/data/skins/capri/lang/en/user/show_domain.html
wget -O /usr/local/directadmin/data/skins/capri/images/ic/ic_phpselector.png https://raw.githubusercontent.com/alisalehiman/capri/master/images/ic/ic_phpselector.png
curl https://raw.githubusercontent.com/alisalehiman/capri/master/user/show_domain.html > /usr/local/directadmin/data/skins/capri/user/show_domain.html
curl https://raw.githubusercontent.com/alisalehiman/capri/master/header.html > /usr/local/directadmin/data/skins/capri/header.html

echo ======= update plugin
curl https://raw.githubusercontent.com/alisalehiman/capri/master/phpselector/user_img.html > /usr/local/directadmin/plugins/phpselector/hooks/user_img.html
curl https://raw.githubusercontent.com/alisalehiman/capri/master/lvemanager/user_img.html > /usr/local/directadmin/plugins/new_lvemanager/hooks/user_img.html

echo === set utf-8
mv /usr/local/directadmin/data/skins/capri/user/additional_domains.html /usr/local/directadmin/data/skins/capri/user/additional_domains-BACKUP.html
mv /usr/local/directadmin/data/skins/enhanced/user/additional_domains.html /usr/local/directadmin/data/skins/enhanced/user/additional_domains-BACKUP.html
perl -pi -e 's/iso-8859-1/UTF-8/' /usr/local/directadmin/data/skins/capri/lang/en/lf_standard.html
service directadmin restart
rm -rf fix.sh