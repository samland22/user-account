#!/bin/bash

#Author: Laure H
#Date: 29-10-2022

### Script for Account Creation Authomatic for New Employees
### Modification Date: 29-10-2022

echo "#### ENTER YOUR PERSONNAL INFORMATION #####"
echo
echo "Enter your first name"
read fname
echo "Enter your last name"
read lname
echo "Enter your email address"
read email
echo "Enter your Profession"
read prof
echo "Create a username"
read uname
echo "Enter your Password"
read pss
cat /etc/passwd |grep -i $uname
        if
        [ $? -eq 0 ]
        then
        echo "ERROR $uname Already exist"
        echo "PLEASE CHOOSE ANOTHER USERNAME"
        exit 0
        fi
useradd $uname -c "$fname $lname; $prof; $email"; echo $pss | passwd --stdin $uname

