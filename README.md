# RabbitMQ-Connection-Close
Close all rabbitMQ Connection using shell script


```rabbitmqctl list_connections pid > connectionlist.txt```

```#!/bin/bash
while IFS= read -r line; do
    echo "rabbitmqctl close_connection \""$line"\" \"manually closing idle connection\"" >> finalCommand.sh
done < connectionlist.txt```


``` sh finalCommand.sh ```
