DNS_LIST=`cat /etc/resolv.conf | grep 'nameserver' | awk '{print $2}' | tr '\n' ' '`

if [[ "$DNS_LIST" == *'208.67.22'* ]]
then 
    echo 'already set!'
else
    networksetup -setdnsservers 'Wi-Fi' 208.67.222.222 208.67.220.220 $DNS_LIST
fi
