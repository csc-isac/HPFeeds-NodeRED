#apt-get update 
#&& apt-get upgrade -y
#apt-get install docker.io docker-compose

docker-compose up -d --build mongodb
docker restart hpfeedsnodered_mongodb_1
docker-compose up -d --build hpfeeds
docker-compose up -d --build nodered
docker exec hpfeedsnodered_hpfeeds_1 /bin/sh -c "chmod +x installer && ./installer"
#docker exec hpfeedsnodered_hpfeeds_1 /bin/sh -c "supervisorctl status HPFeeds-broker && supervisorctl status mnemosyne"
docker exec hpfeedsnodered_nodered_1 /bin/sh -c "pm2 start /usr/bin/node-red -- -v && ./malware/NewFile.sh"
