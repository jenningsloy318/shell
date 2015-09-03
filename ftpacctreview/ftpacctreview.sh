#!/bin/bash 
declare -A loginsummary
SERVER_NAME=$1
AUTH_FILE=$2
if [ $# != 2 ] ; then
     echo "USAGE: $0 server authfile"
     echo " e.g.: $0 ftp.synnex.com us_auth.log"
     echo "Server can be : ftp.synnex.com ftp2.synnex.com ftp3.synnex.com local-ftp.synnex.com caftp.synnex.com"
     exit 1;
fi

read -p "Input the passwd of LDAP server: " -s ldappasswd
LDAP_ACCTS=`ldapsearch -h 10.88.126.150 -x -D "cn=root,dc=synnex,dc=org"  -b "ou=${SERVER_NAME},ou=proftpd servers,dc=synnex,dc=org"  -LLL -w "${ldappasswd}" |grep uid|grep -v ^dn | grep -v ^uidNumber |awk -F: '{print $2}'|sed 's/^\s*\|\s*$//g'`
>${SERVER_NAME}_loginsummary.csv
>${SERVER_NAME}_nologin.csv
while read  line
do
    if echo $line |grep -q "USER";then
        if echo $line|grep -q "^Synnex";then
            time=`echo $line|awk '{print $6}' | tr -d "["`
            acct=`echo $line|awk '{print $9}' | tr -d "\""`
            loginsummary[${acct}]=$time
        else 
            time=`echo $line|awk '{print $5}' | tr -d "["`
            acct=`echo $line|awk '{print $8}' | tr -d "\""`
            loginsummary[${acct}]=$time
        fi
    fi
done<$AUTH_FILE

for key in ${!loginsummary[@]};
do
        echo "$SERVER_NAME,${key},${loginsummary[${key}]}" >>${SERVER_NAME}_loginsummary.csv
done

for ldapacct in `echo $LDAP_ACCTS`;
do
    if echo ${!loginsummary[@]} |grep -q -v $ldapacct ;then
        echo "$SERVER_NAME,$ldapacct,0">>${SERVER_NAME}_nologin.csv
    fi
done
