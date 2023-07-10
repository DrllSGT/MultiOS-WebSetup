#! /bin/bash

# Variables
URL="https://www.tooplate.com/zip-templates/2129_crispy_kitchen.zip"
Art_Name="2129_crispy_kitchen"
TMP_Dir="/tmp/webfiles"

# if 
yum --help &> /dev/null

if [ $? -eq 0 ]
then
        # Set Local Variables for CentOS
        PACKAGE="httpd wget unzip"
        SVC="httpd"

        # Install Dependencies & reduce the amount of output except errors
        echo "#######################################"
        echo "Install Packages"
        echo "#######################################"
        sudo yum install $PACKAGE -y > /dev/null
        echo

        # Start & Enable service
        echo "#######################################"
        echo "Start & Enable HttPD Service"
        echo "#######################################"
        sudo systemctl start $SVC
        sudo systemctl enable $SVC
        echo

        # Create Temp Directory
        echo "#######################################"
        echo "Starting Artifact Deployment"
        echo "#######################################"
        mkdir -p $TMP_Dir
        cd $TMP_Dir
        echo

        # Download HTML Template, Unzip it & copy contents to Web server folder
        echo "#######################################"
        echo "Installing HTML Website"
        echo "#######################################"
        wget $URL
        unzip 2129_crispy_kitchen.zip
        sudo cp -r $Art_Name/* /var/www/html/
        echo

        # Restart webserver
        echo "#######################################"
        echo "Restarting HTTPD Service"
        echo "#######################################"
        sudo systemctl restart $SVC
        echo

        # Clean Up
        echo "#######################################"
        echo "Removing Temp Files"
        echo "#######################################"
        rm -rf $TMP_Dir
        echo

        # Completed statement with output
        echo "#######################################"
        echo "All Completed!"
        echo "#######################################"
        echo
        sudo systemctl status $SVC
        ls /var/www/html/

# If Ubuntu:
else

        # Set Local Variables for Ubuntu
        PACKAGE="apache2 wget unzip"
        SVC="apache2"

        # Install Dependencies & reduce the amount of output except errors
        echo "#######################################"
        echo "Install Packages"
        echo "#######################################"
        sudo apt update
        sudo apt install $PACKAGE -y > /dev/null
        echo

        # Start & Enable service
        echo "#######################################"
        echo "Start & Enable HttPD Service"
        echo "#######################################"
        sudo systemctl start $SVC
        sudo systemctl enable $SVC
        echo

        # Create Temp Directory
        echo "#######################################"
        echo "Starting Artifact Deployment"
        echo "#######################################"
        mkdir -p $TMP_Dir
        cd $TMP_Dir
        echo

        # Download HTML Template, Unzip it & copy contents to Web server folder
        echo "#######################################"
        echo "Installing HTML Website"
        echo "#######################################"
        wget $URL
        unzip 2129_crispy_kitchen.zip
        sudo cp -r $Art_Name/* /var/www/html/
        echo

        # Restart webserver
        echo "#######################################"
        echo "Restarting HTTPD Service"
        echo "#######################################"
        sudo systemctl restart $SVC
        echo

        # Clean Up
        echo "#######################################"
        echo "Removing Temp Files"
        echo "#######################################"
        rm -rf $TMP_Dir
        echo

        # Completed statement with output
        echo "#######################################"
        echo "All Completed!"
        echo "#######################################"
        echo
        sudo systemctl status $SVC
        ls /var/www/html/

fi
