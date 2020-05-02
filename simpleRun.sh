apt-get update && apt-get upgrade -y
apt-get install docker.io docker-compose

docker-compose up -d --build
docker exec hpfeedsnodered_hpfeeds_1 /bin/sh -c "./installer.sh"
docker exec hpfeedsnodered_nodered_1 /bin/sh -c "pm2 start /usr/bin/node-red -- -v && ./malware/NewFile.sh"
