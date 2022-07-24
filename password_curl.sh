#!/bin/bash

username=guest
hosname=localhost

echo -n "Password: "

stty -echo

read password

stty echo

echo

curl -s -u "${username}:${password}" -0 "ftp://${hosname}/filename.txt"