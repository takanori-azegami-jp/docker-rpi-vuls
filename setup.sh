#!/bin/bash

# NVDの取得
docker run --rm -it \
    -v $PWD:/go-cve-dictionary \
    -v $PWD/go-cve-dictionary-log:/var/log/go-cve-dictionary \
    vuls/go-cve-dictionary fetch nvd

# JVDの取得
docker run --rm -it \
    -v $PWD:/go-cve-dictionary \
    -v $PWD/go-cve-dictionary-log:/var/log/go-cve-dictionary \
    vuls/go-cve-dictionary fetch jvn

# OVALの取得 (RedHat)
docker run --rm -it \
    -v $PWD:/goval-dictionary \
    -v $PWD/goval-dictionary-log:/var/log/goval-dictionary \
    vuls/goval-dictionary fetch redhat 5 6 7 8 9

# OVALの取得 (Ubuntu)
docker run --rm -it \
    -v $PWD:/goval-dictionary \
    -v $PWD/goval-dictionary-log:/var/log/goval-dictionary \
    vuls/goval-dictionary fetch ubuntu 14.04 16.04 18.04 19.10 20.04 20.10 21.04 21.10 22.04 22.10 23.04

# OVALの取得 (Debian)
docker run --rm -it \
    -v $PWD:/goval-dictionary \
    -v $PWD/goval-dictionary-log:/var/log/goval-dictionary \
    vuls/goval-dictionary fetch debian 7 8 9 10 11

# OVALの取得 (alpine)
docker run --rm -it \
    -v $PWD:/goval-dictionary \
    -v $PWD/goval-dictionary-log:/var/log/goval-dictionary \
    vuls/goval-dictionary fetch alpine 3.2 3.3 3.4 3.5 3.6 3.7 3.8 3.9 3.10 3.11 3.12 3.13 3.14 3.15 3.16 3.17

# OVALの取得 (amazon)
docker run --rm -it \
    -v $PWD:/goval-dictionary \
    -v $PWD/goval-dictionary-log:/var/log/goval-dictionary \
    vuls/goval-dictionary fetch amazon

# gost(RedHat/CentOS/AlmaLinux/Rocky Linux）
docker run --rm -i \
    -v $PWD:/gost \
    -v $PWD/gost-log:/var/log/gost \
    vuls/gost fetch redhat

# gost(Debian）
docker run --rm -i \
    -v $PWD:/gost \
    -v $PWD/gost-log:/var/log/gost \
    vuls/gost fetch debian

# gost(Ubuntu）
docker run --rm -i \
    -v $PWD:/gost \
    -v $PWD/gost-log:/var/log/gost \
    vuls/gost fetch ubuntu

# go-exploitdb の取得
docker run --rm -i \
    -v $PWD:/go-exploitdb \
    -v $PWD/go-exploitdb-log:/var/log/go-exploitdb \
    vuls/go-exploitdb fetch exploitdb

docker run --rm -i \
    -v $PWD:/go-exploitdb \
    -v $PWD/go-exploitdb-log:/var/log/go-exploitdb \
    vuls/go-exploitdb fetch awesomepoc

docker run --rm -i \
    -v $PWD:/go-exploitdb \
    -v $PWD/go-exploitdb-log:/var/log/go-exploitdb \
    vuls/go-exploitdb fetch githubrepos

docker run --rm -i \
    -v $PWD:/go-exploitdb \
    -v $PWD/go-exploitdb-log:/var/log/go-exploitdb \
    vuls/go-exploitdb fetch inthewild

# Fetch go-msfdb
docker run --rm -i \
    -v $PWD:/go-msfdb \
    -v $PWD/go-msfdb-log:/var/log/go-msfdb \
    vuls/go-msfdb fetch msfdb

#  Fetch go-kev
docker run --rm -i \
    -v $PWD:/go-kev \
    -v $PWD/go-kev-log:/var/log/go-kev \
    vuls/go-kev fetch kevuln

#  etch go-cti
docker run --rm -i \
    -v $PWD:/go-cti \
    -v $PWD/go-cti-log:/var/log/go-cti \
    vuls/go-cti fetch threat
