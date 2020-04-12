FROM balenalib/rpi-node
RUN apt-get update && apt-get upgrade -y
RUN apt-get install apt-utils
RUN apt-get install git -y
RUN git clone https://github.com/KhaosT/HAP-NodeJS.git
WORKDIR HAP-NodeJS
RUN npm install
VOLUME [ "HAP-NodeJS/src/accessories" ]
RUN npm install mqtt
RUN npm install typescript
RUN npm install -g ts-node
EXPOSE 51826
CMD [ "ts-node", "--files", "src/Core.ts"]
