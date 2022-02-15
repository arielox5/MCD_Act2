FROM ubuntu

workdir root/

RUN apt-get -y update && \
	apt-get install -yq nano curl unzip less pip tldr &&\
	lang=c.UTF-8 &&\
    pip install csvkit

copy script.sh /root

