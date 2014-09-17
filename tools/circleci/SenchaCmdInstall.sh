#!/usr/bin/expect

set timeout 1000
spawn ./SenchaCmd-5.0.1.231-linux-x64.run
expect "Press \[Enter\] to continue :"
send \r
expect "Press \[Enter\] to continue :"
send \r
expect "Press \[Enter\] to continue :"
send \r
expect "Press \[Enter\] to continue :"
send \r
expect "Press \[Enter\] to continue :"
send \r
expect "Press \[Enter\] to continue :"
send \r
expect "Do you accept this license? \[y/n\]:"
send y\r
expect -re "Installation Directory"
send \r
expect "Do you want to continue? \[Y/n\]:"
send Y\r
