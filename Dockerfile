FROM postgres:9.6


RUN apt-get update && \
    apt-get install -y curl unzip

RUN mkdir /temp/ && \
    cd /temp/ && \
    curl -LOk https://flairlink.jp/download/code-ssql.zip && \
    unzip code-ssql.zip && \
    cp -r code-ssql/ddl/* /docker-entrypoint-initdb.d/
