#!/bin/bash
cont_count=$1
echo "creating $cont_count containers.."
sleep 2;
for i in `seq $cont_count`
do
	echo "=============================="
    echo "Creating www.gone$i container.."
    sleep 1
   sudo docker run --name www.gone$i -d -it --rm nageshvkn/node3 /bin/bash
    echo "www.gone$i container has been created!"
	echo "=============================="
done
