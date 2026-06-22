#!/bin/bash

while true
do

choice=$(zenity --list \
--title="Secure User Management" \
--column="Select Operation" \
"Add User" \
"Change Password" \
"Set Expiry" \
"Exit" \
--height=300 --width=300)

case "$choice" in

"Add User")

data=$(zenity --forms \
--title="Add User" \
--add-entry="Username" \
--add-password="Password")

[ $? -ne 0 ] && continue

username=$(echo "$data" | cut -d'|' -f1)
password=$(echo "$data" | cut -d'|' -f2)

if [ -z "$username" ] || [ -z "$password" ]
then
zenity --error --text="Fields cannot be empty."
continue
fi

if id "$username" &>/dev/null
then
zenity --error --text="User already exists."
else
sudo useradd "$username"

echo "$username:$password" | sudo chpasswd

zenity --info --text="User created successfully."
fi
;;

"Change Password")

data=$(zenity --forms \
--title="Change Password" \
--add-entry="Username" \
--add-password="New Password")

[ $? -ne 0 ] && continue

username=$(echo "$data" | cut -d'|' -f1)
password=$(echo "$data" | cut -d'|' -f2)

if id "$username" &>/dev/null
then

echo "$username:$password" | sudo chpasswd

zenity --info --text="Password updated successfully."

else

zenity --error --text="User does not exist."

fi
;;

"Set Expiry")

data=$(zenity --forms \
--title="Set Expiry Date" \
--add-entry="Username" \
--add-entry="Expiry Date (YYYY-MM-DD)")

[ $? -ne 0 ] && continue

username=$(echo "$data" | cut -d'|' -f1)
expiry=$(echo "$data" | cut -d'|' -f2)

if id "$username" &>/dev/null
then

sudo chage -E "$expiry" "$username"

zenity --info --text="Expiry date updated."

else

zenity --error --text="User does not exist."

fi
;;

"Exit")

exit
;;

*)

exit
;;

esac

done
