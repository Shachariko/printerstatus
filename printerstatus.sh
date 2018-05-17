#!/bin/bash

#This script is especially made for my IT enviroment
# you can use it freely if you got any of these printers below, just add IP and NAME
#HP Laserjet 2015
#Samsung M267x 287x
#Samsung SL-M3870FD
#Samsung SCX-5637FR
#HP Laserjet M2727NF
# if you understand alittle bit how to grep information in bash you can customize this to any network printers that shows the #ink percentage in a webpage
#Thank and Enjoy
#Shachar Ben Gur / Thanks Yuri Fedorov you are a really good Gavnuyk shachar@hotmail.com

 echo "Daily Inks Report `date` By `whoami`"
 echo -e ''
 echo 'HP Laserjet 2015 (Corridor) Ink Model Q7553X'; curl -s --max-time 600  http://<ip> | grep -oP '(?<=&nbsp;&nbsp;)([0-9]*%)'
 echo -e ''
 echo 'Samsung M267x 287x(Name)Ink Model MLT-D115L'; curl -s --max-time 600 http://<ip>/sws/app/information/home/home.json | grep -oP '(?<=remaining: )(\d+)' | head -n 1
 echo 'Samsung SL-M3870FD (Reception) Ink Model '; curl -s --max-time 600 http://<ip>/sws/app/information/home/home.json | grep -oP '(?<=remaining: )(\d+)' | head -n 1
 echo 'Samsung SCX-5637FR (Name) Ink Model MLT-D205S '; curl -s --max-time 600 http://<ip>/sws/app/information/home/home.json | grep -oP '(?<=remaining: )(\d+)' | head -n 1
 echo 'Samsung SL-M3870FD (Finance) Ink Model MLT-D203'; curl -s --max-time 600 http://<ip>/sws/app/information/home/home.json | grep -oP '(?<=remaining: )(\d+)' | head -n 1
 echo 'HP Laserjet M2727NF (Name) Ink Model Q7553X'; curl -s --max-time 600 http://<ip> | grep -oP '(?<=&nbsp;&nbsp;)([0-9]*%)'
 echo -e ''
 echo 'Samsung M267x 287x(Name)Ink Model MLT-D115L'; curl -s --max-time 600 http://<ip>/sws/app/information/home/home.json | grep -oP '(?<=remaining: )(\d+)' | head -n 1
 echo -e ''
 echo 'Reports done'
