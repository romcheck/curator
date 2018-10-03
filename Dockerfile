FROM python:alpine

RUN pip install elasticsearch-curator==5.4.1

COPY entrypoint.sh /opt/

ENTRYPOINT ["/opt/entrypoint.sh"]

CMD ["crond", "-f"]
