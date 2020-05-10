
#ident = SGU-Dio-1-Alsut
#secret = password1234

docker exec hpfeedsnodered_hpfeeds_1 /bin/sh -c "cp add_user_Cowrie.sh add_user_Cowrie_cp.sh"

docker exec hpfeedsnodered_hpfeeds_1 /bin/sh -c "sed -i 's/sensor_cowrie/SGU-Cow-1-Alsut/g' add_user_Cowrie_cp.sh"
#docker exec hpfeedsnodered_hpfeeds_1 /bin/sh -c "sed -i 's/password1234/PASSWORD/g' add_user_Cowrie_cp.sh"

docker exec hpfeedsnodered_hpfeeds_1 /bin/sh -c "chmod u+x add_user_Cowrie_cp.sh && ./add_user_Cowrie_cp.sh"

docker exec hpfeedsnodered_hpfeeds_1 /bin/sh -c "rm add_user_Cowrie_cp.sh"
