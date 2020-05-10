#FROM isif/hpfeeds:version1
FROM isif/hpfeeds:version1 


RUN echo '
python /opt/hpfeeds/broker/add_user.py sensor-dionaea password1234 "mwbinary.dionaea.sensorunique,dionaea.capture,dionaea.capture.anon,dionaea.captures,dionaea.connections" " "\n\
>> add_user_Dionaea.sh'

RUN echo '
python /opt/hpfeeds/broker/add_user.py sensor-cowrie password1234 "cowrie.sessions,cowrie.session.connect,cowrie.login.success,cowrie.login.failed,cowrie.command.input,cowrie.command.failed,cowrie.session.file_download,cowrie.session.file_upload,cowrie.client.version,cowrie.log.closed,cowrie.session.closed" " "\n\
>> add_user_Cowrie.sh'


#RUN apt update && apt-get install -y mongodb-clients
#RUN mongo
#RUN sed -i "s/bindIp: 127.0.0.1/bindIp: 0.0.0.0/g" /etc/mongod.conf.orig
#RUN cd mhn/scripts && ./install_hpfeeds.sh && ./install_mnemosyne.sh
#RUN supervisorctl && supervisorctl status hpfeeds-broker 
#&& ./install_mnemosyne.sh

#RUN mongo


#RUN supervisorctl status hpfeeds-broker && cd mhn/scripts && ./install_mnemosyne.sh
