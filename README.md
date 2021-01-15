# servicemonitor
this is a simple bash script to check each service and restart them if they are not online or sending the correct response 

to use this script simply download the servicechecker.sh and modify it to suit your needs (it assumes it is being ran from the host machine for each service 127.0.0.1 however should be able to test any url and run commands in the correct syntax)

for example you can add the following into the file or make your own like this:


    #Name of service here
    responsenumberhere=$(curl --write-out %{http_code} --silent --output /dev/null http://ip.address.here:port)
      if [ $responsenumberhere -eq 200 ] ; then
        # website working (sometimes 302 is required instead of 200)
        echo "[name of service here ok]" >>  ./servercheck.txt
      else
        # website down
        echo "nameofservicehere is DOWN fixing this for you" >>  ./servercheck.txt
        #you can run any command below but i picked docker as an example
        /usr/bin/docker stop nameofservicehere
        /usr/bin/docker start nameofservicehere
        fi    
        
hope this helps
