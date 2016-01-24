#!/bin/sh

echo ============= PARSDEV CUSTOM CAPRI INSTALLATION
echo ============= @ 2016
rm -rf fix.sh
curl https://raw.githubusercontent.com/alisalehiman/capri/master/files_user.conf > /usr/local/directadmin/data/skins/capri/files_user.conf
curl https://raw.githubusercontent.com/alisalehiman/capri/master/lang/en/user/show_domain.html > /usr/local/directadmin/data/skins/capri/lang/en/user/show_domain.html
wget -O /usr/local/directadmin/data/skins/capri/images/ic/ic_phpselector.png https://raw.githubusercontent.com/alisalehiman/capri/master/images/ic/ic_phpselector.png
curl https://raw.githubusercontent.com/alisalehiman/capri/master/user/show_domain.html > /usr/local/directadmin/data/skins/capri/user/show_domain.html
curl https://raw.githubusercontent.com/alisalehiman/capri/master/phpselector/user_img.html > /usr/local/directadmin/plugins/phpselector/hooks/user_img.html
curl https://raw.githubusercontent.com/alisalehiman/capri/master/lvemanager/user_img.html > /usr/local/directadmin/plugins/new_lvemanager/hooks/user_img.html
cd /usr/local/directadmin/data/skins/capri
cp -p lang/en/lf_standard.html lang/en/my_lf_standard.html
perl -pi -e 's/iso-8859-1/UTF-8/' lang/en/my_lf_standard.html
echo "LF_STANDARD=my_lf_standard.html" >> files_custom.conf
service directadmin restart
rm -rf fix.sh