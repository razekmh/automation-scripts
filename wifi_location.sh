#home_network_name is read from global variables

if [[ $(/Sy*/L*/Priv*/Apple8*/V*/C*/R*/airport -I | grep -w SSID | awk '{print $2$3}') = $home_network_name ]] && [[ $(/usr/sbin/networksetup -getcurrentlocation) != 'Home' ]]; then
        /usr/sbin/networksetup -switchtolocation "Home"
fi

if [[ $(/Sy*/L*/Priv*/Apple8*/V*/C*/R*/airport -I | grep -w SSID | awk '{print $2$3}') != $home_network_name ]] && [[ $(/usr/sbin/networksetup -getcurrentlocation) = 'Home' ]]; then
        /usr/sbin/networksetup -switchtolocation "Automatic"
fi
