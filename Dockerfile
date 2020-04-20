FROM python:3.6-alpine

LABEL description="Sigma"
LABEL maintainer="Justin Henderson"

RUN apk --update upgrade && \
    apk add python3 git && \
    pip3 install --upgrade pip \
    git clone https://github.com/Neo23x0/sigma.git \
    pip3 install -r sigma/tools/requirements.txt
    
WORKDIR /sigma
CMD ["python3 /sigma/tools/sigmac"]
