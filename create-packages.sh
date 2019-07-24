#!/bin/bash
spawn ./create-package.sh
expect 'Remove the directory "/home/builder/typora/RPMs"'
send "n\r"
expect 'Remove the directory "/home/builder/typora/work"?'
send "n\r"
expect 'Use this archive instead of downloading a new one?'
send "y\r"
expect 'Install the package now?'
send "n\r"