rabbitmqadmin list queues | awk 'NR>3 {print $4 }' > /tmp/list
for f in $(cat /tmp/list); do cmd="rabbitmqadmin delete queue name='$f'"; echo $cmd; eval $cmd; done

# rabbitmqadmin list queues | awk 'NR>3 {print $4 }' > /tmp/list
# for f in $(cat /tmp/list); do echo "rabbitmqadmin delete queue name='$f'" >> /tmp/list2; done
# sh /tmp/list2
