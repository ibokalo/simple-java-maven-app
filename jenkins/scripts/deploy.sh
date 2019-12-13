#!/usr/bin/env bash

ssh ubuntu@ec2-52-70-198-12.compute-1.amazonaws.com mkdir -p /var/www/temp_deploy
scp -r dist ubuntu@ec2-52-70-198-12.compute-1.amazonaws.com:/var/www/temp_deploy/dist/
ssh -i "/root/.ssh/test2222.pem" ubuntu@ec2-52-70-198-12.compute-1.amazonaws.com “rm -rf /var/www/example.com/dist/ && mv /var/www/temp_deploy/dist/ /var/www/example.com/
