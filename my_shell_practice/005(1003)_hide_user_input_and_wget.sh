#!/bin/bash

username=guest
hostname=localhost

echo -n "Password: "
stty -echo
read password

# stty echo

echo
wget -q --password="$password" "ftp://${username}@${hostname}/file.txt"
