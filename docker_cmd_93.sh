#img="tensorflow/tensorflow:2.5.0-gpu"
img="nvcr.io/nvidia/pytorch:20.08-py3"
#img="padim:0.1"


nvidia-docker run --privileged=true   --workdir /git --name "nlpaug"  -e DISPLAY --ipc=host -d --rm  -p 2203:7899  \
-v /raid/git/nlpaug:/git/nlpaug \
-v /raid/git/datasets:/git/datasets \
$img sleep infinity

nvidia-docker exec -it nlpaug  /bin/bash