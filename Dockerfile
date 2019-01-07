FROM wernight/phantomjs

USER root

RUN apt-get update -y \
    && apt-get install -y \
        curl \
    && curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g casperjs

CMD ["/bin/bash"]

