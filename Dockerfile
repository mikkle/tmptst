FROM debian:latest
MAINTAINER mikkle <mukkenborg@gmail.com>
#RUN apt-get update && apt-get install -y \
#    aufs-tools \
#    automake \
#    build-essential \
#    curl \
#    dpkg-sig \
#    mercurial \
RUN apt-get update && rm -rf /var/lib/apt/lists/*

EXPOSE 80

COPY hello_world.sh /root/
RUN chmod +x /root/hello_world.sh

CMD ["/root/hello_world.sh"]
CMD ["ls -laR /"]
CMD ["ls -laR /"]

