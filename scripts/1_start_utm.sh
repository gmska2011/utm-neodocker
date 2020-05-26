#!/bin/bash

#Script to FIRST start container
docker run -it --restart=always -p 8080:8080 --name utm -d --privileged \
  -v /dev/bus/usb:/dev/bus/usb gmska2011/utm-neo-docker:latest
