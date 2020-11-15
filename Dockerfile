FROM python:3.7

WORKDIR /usr/src/app

COPY ./* /usr/src/app

RUN pip install pandas

CMD ["echo", "Nice to meet you"]
