#!/bin/sh

echo ============= PARSDEV CUSTOM CAPRI INSTALLATION
echo ============= @ 2016

curl https://raw.githubusercontent.com/alisalehiman/capri/f6189323e84d8428cc9cb78900af41126b29d074/files_user.conf > /usr/local/directadmin/data/skins/capri/files_user.conf
curl https://raw.githubusercontent.com/alisalehiman/capri/f6189323e84d8428cc9cb78900af41126b29d074/lang/en/user/show_domain.html > /usr/local/directadmin/data/skins/capri/lang/en/user/show_domain.html
curl https://raw.githubusercontent.com/alisalehiman/capri/f6189323e84d8428cc9cb78900af41126b29d074/images/ic/ic_phpselector.png > /usr/local/directadmin/data/skins/capri/ic_phpselector.png
curl https://raw.githubusercontent.com/alisalehiman/capri/f6189323e84d8428cc9cb78900af41126b29d074/user/show_domain.html > /usr/local/directadmin/data/skins/capri/user/show_domain.html
