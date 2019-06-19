#!/bin/sh

    sudo apt Update
echo
echo ----------Install MySQL----------
echo
    sudo apt install mysql-server
    sudo mysql_secure_installation
    sudo pip3 install mysql-connector-python
echo
echo ----------Install PostgreSQL on Ubuntu 18.04 LTS----------
echo
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
    sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -sc)-pgdg main" > /etc/apt/sources.list.d/PostgreSQL.list'
    sudo apt install postgresql postgresql-contrib
    sudo apt install pgadmin3
