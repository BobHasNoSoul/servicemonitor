rm ./servercheck.txt
#nginx
response13=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1)
  if [ $response13 -eq 301 ] ; then
    # website working
    echo "[Nginx ok]" >>  ./servercheck.txt
  else
    # website down
    echo "nginx is DOWN fixing this for you" >>  ./servercheck.txt
    /usr/sbin/service nginx stop
    /usr/sbin/service nginx start
    fi
#nordvpn qbittorrent docker
response=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1:8080)
  if [ $response -eq 200 ] ; then
    # website working
    echo "[QbitTorrent ok]" >>  ./servercheck.txt
  else
    # website down
      echo "Qbittorrent is DOWN fixing this for you" >>  ./servercheck.txt
      /usr/bin/docker stop nordqbit
      /usr/bin/docker start nordqbit
  fi
#deemix
response2=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1:6595)
  if [ $response2 -eq 200 ] ; then
    # website working
    echo "[Deemix ok]" >>  ./servercheck.txt
  else
    # website down
    echo "Deemix is DOWN fixing this for you" >>  ./servercheck.txt
    /usr/bin/docker stop Deemix
    /usr/bin/docker start Deemix
    fi
#jackett
response3=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1:9117/UI/Dashboard)
  if [ $response3 -eq 302 ] ; then
    # website working
    echo "[Jackett ok]" >>  ./servercheck.txt
  else
    # website down
    echo "Jackett is DOWN fixing this for you" >>  ./servercheck.txt
    /usr/bin/docker stop jackett
    /usr/bin/docker start jackett
    fi
#Heimdal
response4=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1:83)
  if [ $response4 -eq 200 ] ; then
    # website working
    echo "[Heimdall ok]" >>  ./servercheck.txt
  else
    # website down
    echo "Heimdall is DOWN fixing this for you" >>  ./servercheck.txt
    /usr/bin/docker stop heimdall
    /usr/bin/docker start heimdall
    fi
#booksonic-air
response5=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1:4040/login)
  if [ $response5 -eq 200 ] ; then
    # website working
    echo "[Booksonic ok]" >>  ./servercheck.txt
  else
    # website down
    echo "Booksonic is DOWN fixing this for you" >>  ./servercheck.txt
    /usr/bin/docker stop booksonic-air
    /usr/bin/docker start booksonic-air
    fi
#ubooquity
response6=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1:2202/books)
  if [ $response6 -eq 200 ] ; then
    # website working
    echo "[Ubooquity ok]" >>  ./servercheck.txt
  else
    # website down
    echo "Ubooquity is DOWN fixing this for you" >>  ./servercheck.txt
    /usr/bin/docker stop ubooquity
    /usr/bin/docker start ubooquity
    fi
#dokuwiki
response7=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1:81)
  if [ $response7 -eq 200 ] ; then
    # website working
    echo "[dokuwiki ok]" >>  ./servercheck.txt
  else
    # website down
    echo "Dokuwiki is DOWN fixing this for you" >>  ./servercheck.txt
    /usr/bin/docker stop dokuwiki
    /usr/bin/docker start dokuwiki
    fi
#sonarr
response8=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1:8989)
  if [ $response8 -eq 200 ] ; then
    # website working
    echo "[Sonarr ok]" >>  ./servercheck.txt
  else
    # website down
    echo "Sonarr is DOWN fixing this for you" >>  ./servercheck.txt
    /usr/bin/docker stop sonarr
    /usr/bin/docker start sonarr
    fi
#radarr
response9=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1:8989)
  if [ $response9 -eq 200 ] ; then
    # website working
    echo "[Radarr ok]" >>  ./servercheck.txt
  else
    # website down
    echo "Radarr is DOWN fixing this for you" >>  ./servercheck.txt
    /usr/bin/docker stop radarr
    /usr/bin/docker start radarr
    fi
#ombi
response10=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1:5000/ombi/login)
  if [ $response10 -eq 200 ] ; then
    # website working
    echo "[Ombi ok]" >>  ./servercheck.txt
  else
    # website down
    echo "Ombi is DOWN fixing this for you" >>  ./servercheck.txt
    /usr/sbin/service ombi stop
    /usr/sbin/service ombi start
    fi
#jellyfin
response11=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1:8096)
  if [ $response11 -eq 302 ] ; then
    # website working
    echo "[Jellyfin ok]" >>  ./servercheck.txt
  else
    # website down
    echo "Jellyfin is DOWN fixing this for you" >>  ./servercheck.txt
    /usr/sbin/service jellyfin stop
    /usr/sbin/service jellyfin start
    fi
#navidrome
response12=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1:4533/login)
  if [ $response12 -eq 302 ] ; then
    # website working
    echo "[Navidrome ok]" >>  ./servercheck.txt
  else
    # website down
    echo "Navidrome is DOWN fixing this for you" >>  ./servercheck.txt
    /usr/sbin/service navidrome stop
    /usr/sbin/service navidrome start
    fi
#static file repo hosted on lighttpd
response14=$(curl --write-out %{http_code} --silent --output /dev/null http://127.0.0.1:8085)
  if [ $response14 -eq 200 ] ; then
    # website working
    echo "[static file repo ok]" >>  ./servercheck.txt
  else
    # website down
    echo "Static file repo is DOWN fixing this for you" >>  ./servercheck.txt
    /usr/sbin/service lighttpd stop
    /usr/sbin/service lighttpd start
    fi
