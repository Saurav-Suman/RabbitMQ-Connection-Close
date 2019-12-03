#!/bin/bash
while IFS= read -r line; do
    echo "rabbitmqctl close_connection \""$line"\" \"manually closing idle connection\"" >> finalCommand.sh
done < connectionlist.txt
