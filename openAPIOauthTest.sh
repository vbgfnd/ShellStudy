#!/bin/bash

#Step 1 prepare testing paras

echo "\

please update the parameters in this shell before doing test

for example:
\"client_id=xxx\"
\"client_secret=xxx\"
\"redirect_uri=xxx\"
\"team_url=xxx\"
"

client_id="773be67cb424e4341386eb74a0818315"
client_secret="41e05f3bc6deb3a9902715d28a3d663a3c8a151b"
#回调地址
#可以在https://requestbin.com/ 创建免费服务器地址作为回调地址
redirect_uri="https://enx41noa8mm1.x.pipedream.net"
#团队域名: http://henry.coding.com 末尾不能加 /
team_url="http://codingcorp.staging-corp.coding.io"

read -p "are you ready? y/n
" isReady

if [ ${isReady} != "y" ] 
then
    echo "please prepare the para first"
    exit 1;
fi

#Step 2 create request and output 

echo "here is request for chrome"
echo ""
req1="${team_url}/oauth_authorize.html?client_id=${client_id}&redirect_uri=${redirect_uri}&response_type=code"
echo $req1
echo ""

#Step 3 create request to get access_token

read -p "please input your code:" code
if [ -z ${code} ]
then
    echo "code=${code}"
    echo "ERROR: code is empty"
    exit 1;
fi
req2="${team_url}/api/oauth/access_token?client_id=${client_id}&client_secret=${client_secret}&grant_type=authorization_code&code=${code}"

echo "
your access_token request:

${req2}"
echo ""

#access_token=`curl "${req2}"`
#echo "access_token=${access_token}"