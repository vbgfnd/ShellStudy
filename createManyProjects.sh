#!/bin/bash


for((i=1,x=1;i<=20;i++,x++));
do

proName=p${x}
echo "项目名="${proName}



str=`curl 'https://codingtestkindli1.coding.net/api/team/codingtestkindli1/template-project' \
  -H 'Connection: keep-alive' \
  -H 'Pragma: no-cache' \
  -H 'Cache-Control: no-cache' \
  -H 'Accept: application/json' \
  -H 'X-XSRF-TOKEN: 9b88c4dd3dff80ed23013d265d23427baf17c86d:1589009479841' \
  -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36' \
  -H 'Content-Type: application/json;charset=UTF-8' \
  -H 'Origin: https://codingtestkindli1.coding.net' \
  -H 'Sec-Fetch-Site: same-origin' \
  -H 'Sec-Fetch-Mode: cors' \
  -H 'Sec-Fetch-Dest: empty' \
  -H 'Referer: https://codingtestkindli1.coding.net/user/projects' \
  -H 'Accept-Language: zh-CN,zh;q=0.9' \
  -H 'Cookie: _ga=GA1.2.1724790407.1588243449; united=daa67e16-2739-4505-8abd-7a74fb294b71; code=Conan%3Dtrue%2Cagent%3Dtrue%2Cartifacts-overview%3Dtrue%2Cartifacts-properties%3Dtrue%2Cartifacts-strategy%3Dtrue%2Casync-blocked%3Dtrue%2Cci-micro-frontend%3Dtrue%2Cci-new-visualization-pipeline%3Dtrue%2Ccoding-flow%3Dfalse%2Ccomposer-proxy%3Dtrue%2Cdepot%20access%20log%3Dfalse%2Cjenkins-ci%3Dfalse%2Cmicro%3Dfalse%2Cmobile-layout-test%3Dfalse%2Cnew-git%3Dfalse%2Cstatic-website%3Dtrue%2Csvn-depot%3Dfalse%2Ctencent-cloud-object-storage%3Dtrue%2C015c0752; _gid=GA1.2.404685487.1588729551; _gaexp=GAX1.2.NjiU1F38SjO7-AOEXAc9YQ.18459.1; __xr_token=XRT-46b20d6d-bfa8-4d97-8372-3dc00bcb2d34; exp=89cd78c2; c=Conan%3Dtrue%2Cagent%3Dtrue%2Cartifacts-overview%3Dtrue%2Cartifacts-properties%3Dtrue%2Cartifacts-strategy%3Dtrue%2Cci-micro-frontend%3Dtrue%2Cci-new-visualization-pipeline%3Dtrue%2Ccomposer-proxy%3Dtrue%2Cstatic-website%3Dtrue%2C5b5b5153; enterprise_domain=codingtestkindli1; system_from=net2; eid=c5546073-b98c-4e4d-b7c3-5d03a0377d19; XSRF-TOKEN=9b88c4dd3dff80ed23013d265d23427baf17c86d:1589009479841' \
  --data-binary "{\"name\":\"${proName}\",\"displayName\":\"${proName}\",\"description\":\"\",\"projectTemplate\":\"CODE_HOST\",\"icon\":\"/static/project_icon/scenery-version-2-1.svg\",\"vcsType\":\"git\",\"createSvnLayout\":\"no\",\"gitEnabled\":true,\"gitReadmeEnabled\":true,\"gitLicense\":\"no\",\"gitIgnore\":\"no\",\"shared\":0,\"type\":2}" \
  --compressed`

echo $str
sleep 2 


done
