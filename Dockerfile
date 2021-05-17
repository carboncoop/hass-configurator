FROM python:3-alpine

RUN apk update && \
    apk upgrade && \
    apk add --no-cache bash git openssh

RUN chmod a+x ./run.sh

EXPOSE 3218
VOLUME /config

ENV HC_BASEPATH /config

ENTRYPOINT ["run.sh"]