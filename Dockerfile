FROM ubuntu

RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN pip install flask gunicorn

COPY . /

CMD ["gunicorn","--bind","0.0.0.0:$PORT","wsgi:app"]