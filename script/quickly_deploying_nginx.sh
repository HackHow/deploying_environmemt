#!/bin/bash

sudo yum -y update
sudo amazon-linux-extras install epel
#sudo yum install -y epel-release
sudo yum -y install nginx

#sudo systemctl enable nginx
#sudo systemctl restart nginx