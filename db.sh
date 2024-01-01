#!/bin/bash
mysql -e "CREATE DATABASE ecomdb;CREATE USER 'ecomuser'@'localhost' IDENTIFIED BY 'ecompassword';GRANT ALL PRIVILEGES ON *.* TO 'ecomuser'@'localhost';FLUSH PRIVILEGES;"
mysql < /home/ansible/ansible_playbook_ecmorce/db-load-script.sql
