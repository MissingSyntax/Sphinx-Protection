<div alt="Sphinx DDoS Proxy Protection Logo" class="separator" style="clear: both; text-align: center;"></div>

Sphinx Proxy Protection
===================

System Requirement
-------------

* CentOS Server 5/6/7/8 x86_64
* CloudLinux Server 5/6/7/8 x86_64
* CentOS Stream Server 7/8 x86_64
* CloudLinux Server 5/6/7/8 x86_64
* AlmaLinux 8 x86_64
* RockyLinux 8 x86_64
* RedHat 5/6/7/8 x86_64
* Ubuntu Server LTS 18/20 x86_64
* Debian Server 9/10/11 x86_64

Install
-------------

Install DDoS Proxy Protection Latest Version:
```
apt update; apt -y install wget zip unzip tar curl ca-certificates && \
apt install -y perl libperl-dev libgd3 libgd-dev libgeoip1 libgeoip-dev geoip-bin libxml2 libxml2-dev libxslt1.1 libxslt1-dev  && \
apt-get -y install build-essential libpcre3 libpcre3-dev zlib1g zlib1g-dev libssl-dev libgd-dev libxml2 libxml2-dev uuid-dev  && \
apt -y install curl wget build-essential checkinstall   && \
apt -y install net-tools sshpass rsync sysstat bc dnsutils  && \
apt -y install libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev && \
wget https://raw.githubusercontent.com/MissingSyntax/Sphinx-Protection/master/latest.sh ; chmod 700 latest.sh ; bash latest.sh



 1. MASTER
 2. SLAVE
 3. REMOVE ALL

 0. Exit

________________________________________________________
Enter your choice [1, 2, 3 or 0]: 
```
