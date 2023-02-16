#!/bin/bash

github_user=$1
datee=$(date +%y-%m-%d)

usuario=$(curl -s https://api.github.com/users/"$github_user" | jq --raw-output '.login')
ide=$(curl -s https://api.github.com/users/"$github_user" | jq --raw-output '.id')
creacion=$(curl -s https://api.github.com/users/"$github_user" | jq --raw-output '.created_at')

saludo="Hola $usuario , UserID: $ide , Cuenta fue creada el: $creacion"
echo $saludo

sudo mkdir /tmp/$datee
sudo chmod 777 /tmp/$datee
echo $saludo >> /tmp/$datee/saludos.log 



#echo -e "$(date +"%H:%M-%Y/%m/%d/")\n$saludo"

#content=$(curl "https://api.github.com/users/$github_user")
#login_name=$(jq -r '.login' <<<" $content")
#datos=$(curl -s https://api.github.com/users/mariotun | jq '.login , .id')
#echo "$datos" | jq --raw-output  '.login'
