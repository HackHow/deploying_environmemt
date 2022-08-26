#!/bin/sh

sudo yum update -y

sudo yum install git -y 

git version

## After Generate key command, you need to put the public key on GitHub
#ssh-keygen -t rsa -b 4096 -C "your_email@example.com"