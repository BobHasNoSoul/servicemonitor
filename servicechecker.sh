##NGINX
response13=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1)
  if [ $response13 -eq 301 ] ; then
    # website working
    echo -n "$response13 "; echo -e "\e[32m[Nginx ok]\e[0m"
  else
    # website down
    echo "nginx is DOWN fixing this for you"
    /usr/sbin/service nginx stop
    /usr/sbin/service nginx start
    fi
##QBITTORRENT DOCKER (i named mine nordqbit but you can name this whatever you like just change the lower to the name of your container)
response=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1:8080)
  if [ $response -eq 200 ] ; then
    # website working
    echo -n "$response "; echo -e "\e[32m[QbitTorrent ok]\e[0m"
  else
    # website down
      echo "Qbittorrent is DOWN fixing this for you"
      /usr/bin/docker stop nordqbit
      /usr/bin/docker start nordqbit
  fi
##Deemix
response2=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1:6595)
  if [ $response2 -eq 200 ] ; then
    # website working
    echo -n "$response2 "; echo -e "\e[32m[Deemix ok]\e[0m"
  else
    # website down
    echo "Deemix is DOWN fixing this for you"
    /usr/bin/docker stop Deemix
    /usr/bin/docker start Deemix
    fi
##Jackett
response3=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1:9117/UI/Dashboard)
  if [ $response3 -eq 302 ] ; then
    # website working
    echo -n "$response3 "; echo -e "\e[32m[Jackett ok]\e[0m"
  else
    # website down
    echo "Jackett is DOWN fixing this for you"
    /usr/bin/docker stop jackett
    /usr/bin/docker start jackett
    fi
##Heimdall
response4=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1:83)
  if [ $response4 -eq 200 ] ; then
    # website working
    echo -n "$response4 "; echo -e "\e[32m[Heimdall ok]\e[0m"
  else
    # website down
    echo "Heimdall is DOWN fixing this for you"
    /usr/bin/docker stop heimdall
    /usr/bin/docker start heimdall
    fi
##Booksonic
response5=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1:4040/login)
  if [ $response5 -eq 200 ] ; then
    # website working
    echo -n "$response5 "; echo -e "\e[32m[Booksonic ok]\e[0m"
  else
    # website down
    echo "Booksonic is DOWN fixing this for you"
    /usr/bin/docker stop booksonic-air
    /usr/bin/docker start booksonic-air
    fi
##Ubooquity
response6=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1:2202/books)
  if [ $response6 -eq 200 ] ; then
    # website working
    echo -n "$response6 "; echo -e "\e[32m[Ubooquity ok]\e[0m"
  else
    # website down
    echo "Ubooquity is DOWN fixing this for you"
    /usr/bin/docker stop ubooquity
    /usr/bin/docker start ubooquity
    fi
##Dokuwiki
response7=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1:81)
  if [ $response7 -eq 200 ] ; then
    # website working
    echo -n "$response7 "; echo -e "\e[32m[dokuwiki ok]\e[0m"
  else
    # website down
    echo "Dokuwiki is DOWN fixing this for you"
    /usr/bin/docker stop dokuwiki
    /usr/bin/docker start dokuwiki
    fi
##Sonarr
response8=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1:8989)
  if [ $response8 -eq 200 ] ; then
    # website working
    echo -n "$response8 "; echo -e "\e[32m[Sonarr ok]\e[0m"
  else
    # website down
    echo "Sonarr is DOWN fixing this for you"
    /usr/bin/docker stop sonarr
    /usr/bin/docker start sonarr
    fi
##Radarr
response9=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1:8989)
  if [ $response9 -eq 200 ] ; then
    # website working
    echo -n "$response9 "; echo -e "\e[32m[Radarr ok]\e[0m"
  else
    # website down
    echo "Radarr is DOWN fixing this for you"
    /usr/bin/docker stop radarr
    /usr/bin/docker start radarr
    fi
##Ombi
response10=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1:5000/ombi/login)
  if [ $response10 -eq 200 ] ; then
    # website working
    echo -n "$response10 "; echo -e "\e[32m[Ombi ok]\e[0m"
  else
    # website down
    echo "Ombi is DOWN fixing this for you"
    /usr/sbin/service ombi stop
    /usr/sbin/service ombi start
    fi
##Jellyfin
response11=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1:8096)
  if [ $response11 -eq 302 ] ; then
    # website working
    echo -n "$response11 "; echo -e "\e[32m[Jellyfin ok]\e[0m"
  else
    # website down
    echo "Jellyfin is DOWN fixing this for you"
    /usr/sbin/service jellyfin stop
    /usr/sbin/service jellyfin start
    fi
##Navidrome
response12=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1:4533/login)
  if [ $response12 -eq 302 ] ; then
    # website working
    echo -n "$response12 "; echo -e "\e[32m[Navidrome ok]\e[0m"
  else
    # website down
    echo "Navidrome is DOWN fixing this for you"
    /usr/sbin/service navidrome stop
    /usr/sbin/service navidrome start
    fi
##StaticFileRepo on lighttpd
response14=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1:8085)
  if [ $response14 -eq 200 ] ; then
    # website working
    echo -n "$response14 "; echo -e "\e[32m[static file repo ok]\e[0m"
  else
    # website down
    echo "Static file repo is DOWN fixing this for you"
    /usr/sbin/service lighttpd stop
    /usr/sbin/service lighttpd start
    fi
