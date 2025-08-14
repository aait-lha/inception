#!/bin/bash

useradd --create-home "$FTP_USER"

echo "$FTP_USER:$FTP_PASS" | chpasswd

vsftpd /etc/vsftpd.conf
