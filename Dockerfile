FROM nvidia/cuda:9.2-base

ADD . /app
WORKDIR /app

RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python2.7 get-pip.py

RUN pip2.7 install -r requirements.txt
CMD /bin/bash
