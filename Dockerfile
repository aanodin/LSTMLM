FROM python:3.5

ADD . /app

RUN pip install -r requirements.txt
CMD /bin/bash