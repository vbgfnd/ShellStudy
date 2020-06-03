#!/bin/bash

#Step 1 prepare testing paras

echo "\

please update the parameters in this shell before doing test

for example:
\"client_id=xxx\"
\"client_secret=xxx\"
\"redirect_uri=xxx\"
\"team_gk=xxx\"
"

client_id="48d838ba2180a6f52ba6375fff2491b8"
client_secret="56fc7673c8ad750bba52eb847cb022a478826174"
#回调地址
#可以在https://requestbin.com/ 创建免费服务器地址作为回调地址
redirect_uri="https://endinvg2m90oa.x.pipedream.net"
#团队域名: test.coding.com 里 test 为团队域名
team_gk="codingtestkindli"

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
req1="https://${team_gk}.coding.net/oauth_authorize.html?client_id=${client_id}&redirect_uri=${redirect_uri}&response_type=code"
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
req2="http://${team_gk}.coding.net/api/oauth/access_token?client_id=${client_id}&client_secret=${client_secret}&grant_type=authorization_code&code=${code}"

echo "
your access_token request:

${req2}"

#access_token=`curl "${req2}"`
#echo "access_token=${access_token}"