#!/bin/bash


echo $(find /etc -type f -name '*.conf' -exec du -chb {} + | grep total | awk '{print $1}' 2> ../error.txt) > ../total_size.txt
