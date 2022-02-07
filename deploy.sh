#!/bin/bash
if [ "$1" ]
then
  scp -r src/* "$1"@etud.insa-toulouse.fr:public_html/club-info/
else
  echo "Command: 'deploy.sh username' "
fi
