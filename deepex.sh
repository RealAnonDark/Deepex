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
    echo -e "\nUsage : ./deepex.sh -u example.com -o option=1 -t threads=1

Deep explore in subdomains.

  -u, --url         target URL
  -o, --option      1> ARCH 2>CRT 3>soon...
  -t, --thread      thread numbers | 1 = [DEEPEX].example.com | 2 = [DEEPEX].[DEEPEX].example.com
  -h, --help        help

    "
    exit 1
}
error(){
        echo "deepex: invalid option $1"
        echo "Try './deepex --help' for more information."
}
    url=""
    option=""
    thread=""
function options(){
    while true;do
    if [ "$1" = "--help" -o "$1" = "-h" ]; then
        help
        elif [ "$1" = "--url" -o "$1" = "-u" ]; then
    shift 1
        url=$1
        if [ "$2" = "--option" -o "$2" = "-o" ]; then
        shift 1
        option=$2
            if [ "$3" = "--thread" -o "$3" = "-t" ]; then
        shift 1
        thread=$3
            break
            fi
        fi
            else
                if [ "$1" != "--url" -o "$1" != "-u" ]; then
                error
                elif [ "$1" != "--option" -o "$1" != "-o" ]; then
                error
                elif [ "$1" != "--thread" -o "$1" != "-t" ]; then
                error
                fi
        break
    fi
done
}
function main(){
start
options $@
while true;do
    case $option in
    1)
    echo -e "\n${RED}
                            ░▒▓██████▓▒░░▒▓███████▓▒░ ░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░
                           ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░
                           ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░
                           ░▒▓████████▓▒░▒▓███████▓▒░░▒▓█▓▒░      ░▒▓████████▓▒░
                           ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░
                           ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░
                           ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░
"
    echo "                                                 Starting"
    sleep 1
    code="https://web.archive.org/cdx/search/cdx/\?url\=\*.""$url""\&fl\=original\&collapse\=urlkey"
    sub="$url"".deepex"".txt"
    eval curl $code -s | cut -d "/" -f3 | sort -u > $sub
    break
    ;;
    2)
    echo -e "\n${RED}
                                   ▒▓██████▓▒░░▒▓███████▓▒░▒▓████████▓▒░
                                  ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░
                                  ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░
                                  ░▒▓█▓▒░      ░▒▓███████▓▒░  ░▒▓█▓▒░
                                  ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░
                                  ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░
                                   ░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░
"
    echo "                                                 Starting"
    sleep 1
    code="https://crt.sh/?q=%.""$url"".%&output=json"
    sub="$url"".crt"".txt"
    curl -sk $code | jq -r '.[].name_value'  | sort -u > $sub
    break
    ;;
    3)
    echo "soon..."
    break
    ;;
    *)
    help
    ;;
    esac
done
}
main $@
