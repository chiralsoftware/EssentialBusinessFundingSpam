#!/bin/bash

echo Updating spam info

die() { echo "$*" 1>&2 ; exit 1; }

echo Doing a Git update ...

curl --silent \
     https://raw.githubusercontent.com/chiralsoftware/EssentialBusinessFundingSpam/main/essential-business > \
     /etc/postfix/essential-business || die "Couldn't fetch file from GitHub"

echo Creating new header_checks with Git plus local domains...

cat /etc/postfix/other-checks /etc/postfix/essential-business > \
    /etc/postfix/header_checks || die "Couldn't create new header_checks file"

echo Done
