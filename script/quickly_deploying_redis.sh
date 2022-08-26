#!/bin/bash

sudo yum -y update
sudo amazon-linux-extras install epel 
## (https://www.cyberciti.biz/faq/installing-rhel-epel-repo-on-centos-redhat-7-x/)

# The latest version of Redis is available on Remi repository, add it by executing the command:
sudo yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm

# After adding the repository, install latest Redis on CentOS 7 / RHEL 7 from the repository.
sudo yum --enablerepo=remi install redis

# Get more package details from:
rpm -qi redis

sudo systemctl enable --now redis

# Check redis status
sudo systemctl status redis

## ref: https://computingforgeeks.com/how-to-install-latest-redis-on-centos-rhel/