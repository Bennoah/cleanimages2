#!/bin/bash

# Author: Emmanuel B

# Description: Deletes docker images from docker host (note that the images are already on docker repository)

n=$'cat di | wc -l'

while [ $n -gt 5 ]

do

for i in $( docker images | awk '{print $3}' | grep -v IMAGES )

do

docker rmi ${i+3}

done

#docker rmi $(awk '{print $3}' di | tail -n +5 | xargs)

done

