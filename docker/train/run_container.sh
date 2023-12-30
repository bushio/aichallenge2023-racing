#!/bin/bash
mkdir -p output
rocker --nvidia --x11 --user --net host --privileged --volume ../aichallenge:/aichallenge  --volume /dev/input/:/dev/input/ -- aichallenge-train
