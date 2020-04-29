FROM python:3.6-alpine

RUN pip3 install PyYaml
RUN pip3 install boto3
RUN apk update && apk add curl
RUN curl  -L https://github.com/hairyhenderson/gomplate/releases/download/v3.6.0/gomplate_linux-amd64-slim -L -o gomplate
RUN mv gomplate /usr/local/bin/gomplate
RUN chmod +x /usr/local/bin/gomplate

