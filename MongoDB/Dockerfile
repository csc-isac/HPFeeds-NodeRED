FROM mongo:latest

RUN cat /etc/mongod.conf.orig 

RUN sed -i "s/bindIp: 127.0.0.1/bindIp: 0.0.0.0/g" /etc/mongod.conf.orig

RUN cat /etc/mongod.conf.orig
