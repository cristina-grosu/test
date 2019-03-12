FROM alpine
ADD entrypoint.sh /opt/entrypoint.sh

RUN apk add bash git vim openssh
#RUN mkdir /root/.ssh
RUN mkdir /test
RUN mkdir /test/.ssh
RUN ssh-keyscan github.com > /test/.ssh/known_hosts
RUN chmod 777 /opt/entrypoint.sh
ENTRYPOINT ["./opt/entrypoint.sh"]
