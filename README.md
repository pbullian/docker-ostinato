# Docker image for ostinato

Network Traffic Generator and Analyzer. [Project Homepage](http://ostinato.org)

## usage

to run locally:

first run `xhost +` (allows everyone to conenct to host the X server) then

```
docker run --net=host --privileged -it --rm \
-e DISPLAY=unix$DISPLAY \
-v /tmp/.X11-unix/:/tmp/.X11-unix/ \
pbullian/ostinato:latest  
```

the `--net=host` will allow the container to see the host interfaces and the `--privileged` option is to allow wireshark to see all the interfaces.
