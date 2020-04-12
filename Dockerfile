FROM balenalib/rpi-node
RUN apt-get update && apt-get upgrade -y
RUN apt-get install apt-utils
RUN apt-get install git -y
# RUN apt-get install libpcap-dev -y
RUN git clone https://github.com/KhaosT/HAP-NodeJS.git
WORKDIR HAP-NodeJS
RUN rm -f /HAP-NodeJS/src/accessories/*_accessory.ts
RUN rm -f /HAP-NodeJS/src/accessories/gstreamer-audioProducer.ts
RUN npm install
VOLUME [ "HAP-NodeJS/src/accessories" ]
RUN npm install mqtt
RUN npm install typescript
RUN npm install -g ts-node
# RUN npm install node-dash-button
EXPOSE 51826
ADD accessories src/accessories/
CMD [ "ts-node", "--files", "src/Core.ts"]
