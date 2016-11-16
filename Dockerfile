FROM postgres:9.6


RUN apt-get update && \
    apt-get install -y curl unzip

RUN mkdir /temp/ && \
    cd /temp/ && \
    curl -LOk https://flairlink.jp/download/code-ssql.zip && \
    unzip code-ssql.zip && \
    cd code-ssql/ddl/ && \
    for file in *; do mv -i "${file}" "${file}.sql"; done && \
    cp * /docker-entrypoint-initdb.d/
