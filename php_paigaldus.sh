
#!/bin/bash

PHP=$(dpkg-query -W -f='${Status}' php7.0 2>/dev/null | grep -c 'ok installed')

if [ $PHP -eq 0 ]; then
        echo "Paigaldame pgp ja vajalikud asjandused"
        apt install php7.0
        echo "php on paigaldatud"

elif [ $PHP -eq 1 ]; then
        echo "php on juba paigaldatud goofy ahh"
        which php

fi
