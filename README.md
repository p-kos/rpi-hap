
# HAP-NodeJS for docker

This is a HAP-NodeJS implementation for docker, built over apline/rpi-node image, using MQTT server

## Sample
    docker run -v ~/rpi-hap/accessories:/HAP-NodeJS/src/accessories -p 51826:51826 --network="host" pkos/rpi-hap

