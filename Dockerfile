FROM node:6.11.2

MAINTAINER william <william@10ln.com>

RUN apt-get update && \
	apt-get install git && \
	apt-get install curl bzip2 libfontconfig libfreetype6 software-properties-common wget -y && \
	wget https://github.com/chenqing/ng-mini/raw/master/font/msyh.ttf -O msyh.ttf && \
	cp msyh.ttf /usr/share/fonts/msyh.ttf && \
	git clone https://github.com/william0wang/webcap-nodejs /webcap && \
    cd webcap && \
    npm install -g pageres \
    npm install -g restify \
    npm install -g

RUN mkdir -p /tmp/webcap/images && \
	chmod -R 777 /tmp/webcap

# RUN rm -rf webcap

# ADD ./src /webcap

WORKDIR /webcap

EXPOSE 7381

ENTRYPOINT ["webcap"]
