FROM isif/hpfeeds:version1 
#take the image from docker hub isif and hpfeeds image version 1

RUN echo ' \n\
python /opt/hpfeeds/broker/add_user.py sensor-dionaea password1234 "mwbinary.dionaea.sensorunique,dionaea.capture,dionaea.capture.anon,dionaea.captures,dionaea.connections" " "\n\
\n'\
>> add_user_Dionaea.sh
#create a script for dionaea that can be used to create a new ident and secret without get into container using addUser_HPFEEDS_dionaea.sh at HPFeeds folder

RUN echo ' \n\
python /opt/hpfeeds/broker/add_user.py sensor-cowrie password1234 "cowrie.sessions,cowrie.session.connect,cowrie.login.success,cowrie.login.failed,cowrie.command.input,cowrie.command.failed,cowrie.session.file_download,cowrie.session.file_upload,cowrie.client.version,cowrie.log.closed,cowrie.session.closed" " "\n\
\n'\
>> add_user_Cowrie.sh
#create a script for cowrie that can be used to create a new ident and secret without get into container execute using addUser_HPFEEDS_cowrie.sh at HPFeeds folder

