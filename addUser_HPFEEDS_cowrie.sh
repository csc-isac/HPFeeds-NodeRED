
#ident = SGU-Dio-1-Alsut
#secret = password1234

docker exec hpfeedsnodered_hpfeeds_1 /bin/sh -c "cp add_user_Cowrie.sh add_user_Cowrie_cp.sh"
#copy the add_user-Cowrie.sh script to the add_user_Cowrie_cp.sh we need this to modify the copy

docker exec hpfeedsnodered_hpfeeds_1 /bin/sh -c "sed -i 's/sensor_cowrie/SGU-Cow-1-Alsut/g' add_user_Cowrie_cp.sh"
#change the ident into the ident that we want for example change ident sensor_cowrie to SGU-Cow-1-Alsut

#docker exec hpfeedsnodered_hpfeeds_1 /bin/sh -c "sed -i 's/password1234/PASSWORD/g' add_user_Cowrie_cp.sh"
#change the secret into the secret that we want for example change password1234 to PASSWORD 

docker exec hpfeedsnodered_hpfeeds_1 /bin/sh -c "chmod u+x add_user_Cowrie_cp.sh && ./add_user_Cowrie_cp.sh"
#change the file permission of add_user_Cowrie_cp.sh to be able to be executed and then execute the bash script

docker exec hpfeedsnodered_hpfeeds_1 /bin/sh -c "rm add_user_Cowrie_cp.sh"
#remove the file 
