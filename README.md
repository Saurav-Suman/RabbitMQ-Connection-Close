# RabbitMQ-Connection-Close
Close all rabbitMQ Connection using shell script

Step - 1

```rabbitmqctl list_connections pid > connectionlist.txt```

Step - 2

```#!/bin/bash
while IFS= read -r line; do
    echo "rabbitmqctl close_connection \""$line"\" \"manually closing idle connection\"" >> finalCommand.sh
done < connectionlist.txt
```
Step - 3

``` sh finalCommand.sh ```
