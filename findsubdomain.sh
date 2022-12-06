#!/bin/bash
declare -i cont
cont=0

findsub(){
 if [[ $(host $1.$2 | grep -i "address") ]]; then
  $(host $1.$2 >> subdomains.list)
  cont+=1
 fi
}

start(){
 while read -r line; do
  findsub "$line" $1
  sleep 1
 done < Subdomain.txt
}
download_wordlist(){
 typeset file download hash file_hash arr
 file="Subdomain.txt"
 download="https://raw.githubusercontent.com/danTaler/WordLists/master/Subdomain.txt"
 #Baixa arquivo
 if [ -s $file ]; then
  echo "> Hello," $file "alread exist!"
 else rm $file 2>/dev/null | wget -q $download
  if [ -s $file ]; then
   echo "> Good news," $file "was downloaded with success!"
  else echo "> Sorry, something is wrong!"
  fi
 fi
}

domain=$1
download_wordlist
start $domain
echo "Found" $cont "subdomains"
echo "Check the subdomains.list file"
