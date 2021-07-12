FROM jenkins/agent

USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
    apt-utils \
    python3-pip \
    python3-setuptools \
    software-properties-common && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install ansible ansible-lint
