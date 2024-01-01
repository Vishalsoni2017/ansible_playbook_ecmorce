#!/bin/bash
mysql -e "CREATE DATABASE ecomdb;CREATE USER 'ecomuser'@'localhost' IDENTIFIED BY 'ecompassword';GRANT ALL PRIVILEGES ON *.* TO 'ecomuser'@'localhost';FLUSH PRIVILEGES;"
mysql < /home/ec2-user/ansible_playbook_ecmorce/mariaDB/tasks/db-load-script.sql
