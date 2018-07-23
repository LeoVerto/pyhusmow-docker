FROM python:3.7-alpine

VOLUME /config
EXPOSE 8080

RUN pip install --no-cache-dir pyhusmow

ADD automower.cfg /config/automower.cfg

WORKDIR /config

CMD ["husmow", "server" ]
