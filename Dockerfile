FROM ubuntu
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV PATH $PATH:/root/.ndenv/bin
RUN apt-get update && \
    apt-get install -y git curl && \
    git clone https://github.com/riywo/ndenv /root/.ndenv && \
    echo "eval \"\$(ndenv init -)\"" > /root/.bashrc && \
    bash -lic 'git clone https://github.com/riywo/node-build.git $(ndenv root)/plugins/node-build'
