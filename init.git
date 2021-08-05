#!/bin/bash

sudo apt install -y git
git config --global user.name "JeremyEngram"
git config --global user.email "mrubuntuman@gmail.com"

read -p "git init " gitdir git init /opt/$gitdir; echo "Created $gitdir in /opt"

cd /opt/$gitdir

gedit README

git add README

read -p "git commit -m (message): " msg git commit -m $msg

echo "git remote add origin https://github.com/user_name/Mytest.git" 
echo "git push origin master"
echo
echo "git remote add origin  <REMOTE_URL>" 
echo 
echo "git push origin main"


