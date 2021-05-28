# docker build -t airdb/actions .

FROM ubuntu:20.04

#COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
