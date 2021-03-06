FROM jenkins/agent

USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
    apt-utils \
    cargo \
    libssl-dev \
    libxml2-dev \
    libxslt-dev \
    python-dev \
    python3-dev \
    python3-pip \
    python3-setuptools \
    software-properties-common

RUN rm -rf /var/lib/apt/lists/*

RUN pip3 install ansible ansible-lint
