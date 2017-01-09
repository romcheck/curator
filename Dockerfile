FROM python:alpine

RUN pip install elasticsearch-curator

COPY ./tasks /etc/periodic/daily

CMD ["crond", "-f"]
