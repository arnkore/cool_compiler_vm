FROM i386/ubuntu:14.04

RUN cp /etc/apt/sources.list /etc/apt/sources.list.bak
COPY conf/sources.list /etc/apt/sources.list

RUN apt-get -qq update && DEBIAN_FRONTEND=noninteractive apt-get install -qqy flex bison build-essential csh openjdk-6-jdk libxaw7-dev wget vim emacs

COPY conf/.vimrc /root

RUN mkdir -p /usr/class/cs143/cool
COPY student-dist.tar.gz /usr/class
RUN cd /usr/class && tar -xf student-dist.tar.gz -C cs143/cool
RUN ln -s /usr/class/cs143/cool /root/cool
ENV PATH=/usr/class/cs143/cool/bin:$PATH

RUN mkdir -p /root/examples
ADD examples /root/examples
WORKDIR /root
