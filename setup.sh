#!/bin/bash
## Select nodejs version
PS3="Chọn số tương ứng với phiên bản nodejs bạn muốn cài đặt: "
select lng in v16 v18
do
    case $lng in
        "v16")
           ash <(curl -Ls https://raw.githubusercontent.com/dragonx943/alpine-node/main/setup-node16.sh);;
        "v18")
           ash <(curl -Ls https://raw.githubusercontent.com/dragonx943/alpine-node/main/setup-nodejs18.sh);;
        *)
           echo "E: Nhập sai số tương ứng với phiên bản nodejs, vui lòng thử lại !!!";;
    esac
done