#!/bin/bash

# if config file doesnt exist then copy stock config file
#if [[ ! -f /config/core.conf ]]; then
#	cp /home/nobody/transmission/core.conf /config/
#fi

# if vpn set to "no" then don't run openvpn
python2 /opt/lazylibrarian/LazyLibrarian.py --daemon --config /config/config.ini --datadir /config/lazylibrarian
