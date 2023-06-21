!/bin/bash
source_file="Etechapp"
username="ubuntu"
password="123456"
servers=( 172.31.20.54 172.31.26.48 172.31.23.11 )  

if [ -f "$source_file" ]; then
  echo "The file is not empty."

  for server in ${servers[@]}; do
    sshpass -p "$password" scp $source_file $username@$server:/home/ubuntu/project
    if [ "$?" -eq 0 ]; then
      echo "Successfully copied the file to $server."
         else
      echo "Failed to copy the file to $server."
    fi
  done
fi

# delete source file
rm -r project2 

