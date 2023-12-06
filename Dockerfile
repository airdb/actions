# docker build -t airdb/actions .

FROM ubuntu:20.04

#COPY LICENSE README.md /

RUN apt update && apt upgrade -y && apt install -y curl \
      git \
      vim \
      gpg

	
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
#CMD ["/entrypoint.sh"]
