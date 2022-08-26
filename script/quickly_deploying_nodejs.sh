#!/bin/bash
## Download Node.js LTS(16.x)

curl -fsSL https://rpm.nodesource.com/setup_lts.x | sudo bash -

sudo yum install -y nodejs

sudo yum install gcc-c++ make -y
# or: sudo yum groupinstall 'Development Tools'

## check node js version
echo "node version:"
node -v

## check npm version
echo "npm version:"
npm --version


## To test an installation is working (and that the setup scripts are working!) use: 
#sudo curl -fsSL https://deb.nodesource.com/test | bash -


## use `sudo` or run this as root
## Uninstall nodejs
#sudo yum remove nodejs
#sudo rm -r /etc/yum.repos.d/nodesource*.repo
#sudo yum clean all

##ref:
##https://github.com/nodesource/distributions
##https://linuxize.com/post/how-to-install-node-js-on-centos-7/  (use nvm download node)