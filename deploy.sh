#!/bin/bash
if [ "$1" ]
then
  scp location.png logo.png styles.css favicon.ico index.html "$1"@etud.insa-toulouse.fr:public_html/club-info/
else
  echo "Command: 'deploy.sh username' "
fi
