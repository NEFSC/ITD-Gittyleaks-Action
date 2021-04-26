# Container image that runs your code
# FROM alpine:3.10
FROM python:3.8.6-alpine3.12

RUN apk add git

RUN pip3 install gittyleaks

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
