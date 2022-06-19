#!/bin/bash

# Test connection:
/usr/bin/curl --silent --header "X-Install: Sphinx DDoS"
/usr/bin/curl -s -w 'Testing Connection Response Time for: github.com\n\nLookup Time:\t\t%{time_namelookup}\nConnect Time:\t\t%{time_connect}\nPre-transfer Time:\t%{time_pretransfer}\nStart-transfer Time:\t%{time_starttransfer}\n\nTotal Time:\t\t%{time_total}\n' -o /dev/null -L https://raw.githubusercontent.com/MissingSyntax/Sphinx-Protection/master/latest.sh

# Install DDoS Proxy Protection:
if [ "$1" != "" ]; then
latest_version="$1"
else
latest_version=`/usr/bin/curl -L https://raw.githubusercontent.com/duy13/vDDoS-Protection/master/CHANGELOG.txt|grep '*vDDoS-' |awk 'NR==1' |tr -d '*vDDoS-'|tr -d ':'`
fi
/usr/bin/curl -L https://raw.githubusercontent.com/MissingSyntax/Sphinx-Protection/master/vddos-$latest_version.tar.gz -o vddos-$latest_version.tar.gz

originhash=`curl -L https://raw.githubusercontent.com/MissingSyntax/Sphinx-Protection/master/md5sum.txt --silent | grep "vddos-$latest_version.tar.gz" |awk 'NR=1 {print $1}'`
downloadhash=`md5sum vddos-$latest_version.tar.gz | awk 'NR=1 {print $1}'`

tar -xvf vddos-$latest_version.tar.gz >/dev/null 2>&1
cd vddos-$latest_version
chmod 755 -R *.sh  >/dev/null 2>&1
chmod 755 -R */*.sh  >/dev/null 2>&1
./install.sh

if [ -f /vddos/vddos ]; then

	curl -L https://github.com/duy13/vDDoS-Layer4-Mapping/raw/master/vddos-layer4-mapping -o /usr/bin/vddos-layer4
	chmod 700 /usr/bin/vddos-layer4

	echo 'Install Sphinx Proxy Protection Done!'

	/root/.acme.sh/acme.sh --set-default-ca  --server  letsencrypt >/dev/null 2>&1
	exit 0
else
	echo 'Install Sphinx Proxy Protection Failed!'
	exit 1
fi
