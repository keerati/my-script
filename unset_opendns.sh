networksetup -setdnsservers 'Wi-Fi' `cat /etc/resolv.conf | grep 'nameserver' | grep -v '208\.67\.22[2|0]' | awk '{print $2}' | tr '\n' ' '`
