#!/bin/bash

sudo yum update -y
sudo yum install gcc -y

## Download mysql rpm file
sudo yum install https://dev.mysql.com/get/mysql80-community-release-el7-6.noarch.rpm

# ls /etc/yum.repos.d
sudo yum repolist

## if check GPG-KEY fail, execute the command
sudo rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022
sleep 3s
sudo yum install mysql-community-server

## start automatically at the next system restart
sudo systemctl enable mysqld

## start up mysql
sudo systemctl start mysqld

## print mysql temporary passwod
sudo grep 'temporary password' /var/log/mysqld.log

cat << EOF

***You need to input above display temporary password to below, and set new password***

EOF

cat << EOF
set mysql new password rules to root:
  At least one uppercase letter
  At least one lowercase letter
  At least one digit
  At least one special character

Total password length is at least 8 characters.

EOF

sudo mysql_secure_installation -p

## if you want to change mysql password, you can execute below command in MySQL"
## Check Password information
#SHOW VARIABLES LIKE 'validate_password%';

#SET GLOBAL validate_password.policy=LOW;
## length also can set 0
#SET GLOBAL validate_password.length=4;

## Modify root password or you can add a role
#ALTER USER 'root'@'localhost' IDENTIFIED BY 'NewPassword';
#flush privileges;


## https://dev.mysql.com/doc/refman/8.0/en/encryption-functions.html#function_validate-password-strength
## https://dev.mysql.com/doc/refman/8.0/en/validate-password-options-variables.html#sysvar_validate_password_policy