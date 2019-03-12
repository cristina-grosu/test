FROM alpine
ADD entrypoint.sh /opt/entrypoint.sh

RUN apk add bash git vim openssh
RUN mkdir /root/.ssh
RUN ssh-keyscan github.com > /root/.ssh/known_hosts
RUN chmod 777 /opt/entrypoint.sh
ENTRYPOINT ["./opt/entrypoint.sh"]
