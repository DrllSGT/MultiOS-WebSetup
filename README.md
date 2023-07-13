# ![My Skills](https://skillicons.dev/icons?i=bash,linux,html,github) 
# MultiOS-WebSetup

Using 2 scripts and one host txt file for the setup of a static HTML website on either CentOS and/or Ubuntu Linux servers.

1. remote_host.txt = Host list
   
2. multios_websetup.sh =  A script that will setup a HTML static site on either a CentOS or Ubuntu Linux machine depending on which it is run on.
  
3. webdeploy.sh = A script that can be run to deploy the multios_websetup.sh script via SCP on the remote hosts defined in the remote_host.txt file. Ensure this is executeable with chmod +x webdeploy.sh
