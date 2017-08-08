FROM node:6.11.2

MAINTAINER william <william@10ln.com>

RUN apt-get update && \
	apt-get install git && \
	apt-get install curl bzip2 libfontconfig libfreetype6 software-properties-common -y && \
	git clone https://github.com/william0wang/webcap-nodejs /webcap && \
    cd webcap && \
    npm install -g

RUN mkdir -p /tmp/webcap/images && \
	chmod -R 777 /tmp/webcap

# RUN rm -rf webcap

# ADD ./src /webcap

WORKDIR /webcap

EXPOSE 7381

ENTRYPOINT ["/webcap/app.js"]
