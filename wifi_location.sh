home_network_name='SHELLCDE686'

if [[ $(/Sy*/L*/Priv*/Apple8*/V*/C*/R*/airport -I | grep -w SSID | awk '{print $2$3}') = $home_network_nam ]] && [[ $(/usr/sbin/networksetup -getcurrentlocation) != 'Home' ]]; then
        /usr/sbin/networksetup -switchtolocation "Home"
fi

if [[ $(/Sy*/L*/Priv*/Apple8*/V*/C*/R*/airport -I | grep -w SSID | awk '{print $2$3}') != $home_network_name ]] && [[ $(/usr/sbin/networksetup -getcurrentlocation) = 'Home' ]]; then
        /usr/sbin/networksetup -switchtolocation "Automatic"
fi
