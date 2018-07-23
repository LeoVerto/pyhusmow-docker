FROM python:3.6

ARG ADDRESS=0.0.0.0
ARG PORT=1234

VOLUME /config
EXPOSE 8080

RUN pip3 install --no-cache-dir pyhusmow

ADD automower.cfg /config/automower.cfg

WORKDIR /config

CMD [ "python", "-m", "husmow", "server" ]
