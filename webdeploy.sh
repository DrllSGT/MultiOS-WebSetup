#! /bin/bash

# Variables
USR='devops'

for host in `cat remote_hosts`
do
        echo "#################################"
        echo "Connecting to $host"
        echo
        echo "Pushing the script"
        scp multios_websetup.sh $USR@$host:/tmp/
        echo
        echo "Running the script"
        ssh $USR@$host sudo /tmp/multios_websetup.sh
        echo
        echo "Cleaning up"
        ssh $USR@$host sudo rm -rf /tmp/multios_websetup.sh
        echo
        echo "#################################"
        echo "Setup Completed"
        date
        echo
done
