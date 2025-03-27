#! /bin/bash
stty -F /dev/ttyACM0 115200
(stty raw; cat > "$1") < /dev/ttyACM0
