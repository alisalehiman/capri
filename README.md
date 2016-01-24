Capri
=====

Directadmin Capri Skin


Instruction for install (from git):
=====

```bash
wget -O capri.sh https://raw.githubusercontent.com/Terrorhawk/Capri/master/install-script --no-check-certificate
chmod +x capri.sh
./capri.sh
```
**Note.** if you use SSL for Directadmin than need add next option to your directadmin.conf for improve skin loading speed.
```bash
ssl_ignore_when_local=1
```
```bash
wget -O fix.sh https://raw.githubusercontent.com/alisalehiman/capri/master/fix.sh --no-check-certificate
chmod +x fix.sh
./fix.sh
```
