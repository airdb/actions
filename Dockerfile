# docker build -t airdb/actions .

FROM ubuntu:20.04

#COPY LICENSE README.md /

RUN apt update && apt upgrade -y && apt install -y curl \
      git \
      vim \
      gpg

	
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" > /etc/apt/sources.list.d/github-cli.list

ADD https://cli.github.com/packages/githubcli-archive-keyring.gpg /tmp/githubcli-archive-keyring.gpg
RUN cat /tmp/githubcli-archive-keyring.gpg  |  gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg && \
	apt update && apt install -y gh

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
