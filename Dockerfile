FROM node:8.2.1-alpine

MAINTAINER william <william@10ln.com>

RUN apk update && \
	apk add --no-cache --update bash && \
	apk add git && \
	git clone https://github.com/william0wang/webcap-nodejs /webcap && \
    cd webcap && \
    npm install -g

WORKDIR /

EXPOSE 7381

CMD ["webcap"]
