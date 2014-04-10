#/bin/bash

USER=martyn
DOWNLOAD_DIR=/home/martyn/Downloads
MBED_DIR=/run/media/martyn/MBED

sudo chown $USER $MBED_DIR
while true; do
  change=$(inotifywait -e create $DOWNLOAD_DIR)
  rm -f $MBED_DIR/*.bin
  mv $DOWNLOAD_DIR/*.bin $MBED_DIR  
done
