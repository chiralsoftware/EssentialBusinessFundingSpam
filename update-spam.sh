#!/bin/bash

echo Updating spam info

echo Doing a Git update ...

echo Creating new header_checks with Git plus local domains...

cat /etc/postfix/other-checks /etc/postfix/essential-business > \
    /etc/postfix/header_checks

echo Done
