#!/bin/bash

# get branch name for head

if ! [-t 0]; then
   read -a ref
fi
ifs='/' read -ra REF <<< "${ref[2]}"
branch="${ref[2]}"

if [$branch="master"]; then 
crumb=$(curl -u "jenkins:1234" -s 'http://jemkins:8080/Crubissuer,":",//crumb)')
curl -u "jenkins:1234" -H $scrumb -X POST http://jemkins:8080/job/trabajo/build?delay=0sec

	if [$? -eq 0]; then
	  echo "++++ OK"
	else 
          echo "++++ error"
        fi
fi

