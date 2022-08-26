#!/bin/bash

sudo yum update
sudo yum install gcc


## Download mysql rpm file
sudo yum install https://dev.mysql.com/get/mysql80-community-release-el7-6.noarch.rpm

# ls /etc/yum.repos.d
sudo yum repolist

## if check GPG-KEY fail, execute the command
sudo rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022

sudo yum install mysql-router

## Update yum database with yum using the following command.
#sudo yum makecache

sudo systemctl enable mysqlrouter.service
sudo systemctl start mysqlrouter.service
sudo systemctl status mysqlrouter.service