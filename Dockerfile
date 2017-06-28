FROM alpine
LABEL maintainer "Vlad '0x766c6164' Stoica <vlad@vlads.me>"

RUN apk update && apk add openssh-server && ssh-keygen -A
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config

RUN echo "root:test" | chpasswd
RUN adduser mysql -D && echo "mysql:mysql" | chpasswd
RUN adduser oracle -D && echo "oracle:administrator" | chpasswd

EXPOSE 22
CMD /usr/sbin/sshd -eD