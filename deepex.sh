#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

function start(){
clear
echo -e "\n\n\n\n${RED}
               ░▒▓███████▓▒░░▒▓████████▓▒░▒▓████████▓▒░▒▓███████▓▒░░▒▓████████▓▒░▒▓█▓▒░░▒▓█▓▒░
               ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░
               ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░
               ░▒▓█▓▒░░▒▓█▓▒░▒▓██████▓▒░ ░▒▓██████▓▒░ ░▒▓███████▓▒░░▒▓██████▓▒░  ░▒▓██████▓▒░
               ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░
               ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░
               ░▒▓███████▓▒░░▒▓████████▓▒░▒▓████████▓▒░▒▓█▓▒░      ░▒▓████████▓▒░▒▓█▓▒░░▒▓█▓▒░


            ${GREEN}                                    RealAnonDark ${NC}

${YELLOW}        Deepax is a powerful tool that can explore the depths and find subdomains which are invisable.${NC}
\n\n
"
}

help()
{
    echo -e "\nUsage : ./deepex.sh -u example.com 

Deep explore in subdomains.

  -u, --url         target URL
  -h, --help        help

    "
    exit 1
}
error(){
        echo "deepex: invalid option $1"
        echo "Try './deepex --help' for more information."
}

function recon(){
    eval cd scripts; subfinder -silent -d $2; > $save
    start $@
    python3 turbolist3r.py -d $url -q >> $save
    start $@
    #using web archive
    code="https://web.archive.org/cdx/search/cdx/\?url\=\*.""$url""\&fl\=original\&collapse\=urlkey"
    eval curl $code -s >> $save
    start $@
    #using ssl crt
    url2=$(echo ${url%.*})
    code2="https://crt.sh/?q=%.""$url2"".%&output=json"
    eval curl -sk $code2 | jq -r '.[].name_value'  >> $save
    start $@
}
function cleaner() {
save2="$url2"".txt"
eval cat $save | cut -d "/" -f3 | sort -u | sed 's/:80//' | sed 's/www.//' | sed -r "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2};?)?)?[mGK]//g" | sort -u > $save2
save3="clean""$save2"
eval cat "$save2"
echo hi
eval cat "$save2" | ./httpx -silent > $save3
#eval cat $save2 | ./massdns -r lists/resolvers.txt -t A -o S -w $save3
#eval cat $save3 | awk '{print $1}' | sed 's/.$//' > $save4


eval mkdir $url; mv $save -t $url; mv $save2 -t $url;mv $save3 -t $url; cd .. 

}

function main(){


while true;do

    if [ "$1" = "-u" -o "$1" = "--url" ];then
    url="$2"
    out=$(echo ${url%.*})
    save="$out""-deepex.txt"
    recon $@
    cleaner $@
    break
    elif [ "$1" = "-h" -o "$1" = "--help" ];then
    help
    break
    else
    error
    break
    fi
done

}
start $@
main $@
