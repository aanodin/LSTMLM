FROM nvidia/cuda:10.0-base

ADD . /app
WORKDIR /app

RUN apt-get update
RUN apt-get -y install wget

RUN apt-get -y install python2.7 python-pip

RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python2.7 get-pip.py

RUN pip2.7 install -r requirements.txt
CMD /bin/bash
