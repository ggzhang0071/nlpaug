img="tensorflow/tensorflow:2.5.0-gpu"
#img="padim:0.1"

docker run --privileged=true   --workdir /git --name "nlpaug"  -e DISPLAY --ipc=host -d --rm  -p 2203:4452  \
-v /raid/git/nlpaug:/git/nlpaug $img sleep infinity

docker exec -it nlpaug  /bin/bash

