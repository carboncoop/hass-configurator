FROM python:3-alpine

RUN apk update && \
    apk upgrade && \
    apk add --no-cache bash git openssh

COPY hass_configurator/ hass_configurator
COPY start.py .
RUN chmod a+x ./start.py

EXPOSE 3218
VOLUME /config

ENV HC_BASEPATH /config

ENTRYPOINT python3 ./start.py