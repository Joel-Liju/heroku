FROM ubuntu

RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN pip install flask
RUN pip install -U pytest

COPY . /
RUN pytest testskeleton.py

CMD ["python3","app.py"]