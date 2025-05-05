#!/usr/bin/env bash

apt-get update && apt-get install -y unzip libaio1 wget
wget https://download.oracle.com/otn_software/linux/instantclient/instantclient-basiclite-linux.x64-21.13.0.0.0dbru.zip
unzip instantclient-basiclite-linux.x64-*.zip -d /opt/oracle
echo "/opt/oracle/instantclient_21_13" > /etc/ld.so.conf.d/oracle-instantclient.conf
ldconfig
export LD_LIBRARY_PATH=/opt/oracle/instantclient_21_13:$LD_LIBRARY_PATH
