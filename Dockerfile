FROM centos:7

ENV HOME /home
ENV WISECONFIGDIR=/opt/wise2.4.1/wisecfg/
ENV PATH=/opt/wise2.4.1/src/bin:$PATH

ADD wise2.4.1.tar.gz /opt

RUN yum makecache \
    && yum -y install make \
    && yum -y install glib2-devel \
    && yum -y install gcc \
    && yum -y install flex \
    && cd /opt/wise2.4.1/src/ \
    && make all || { echo "make all failed"; exit 0; }   \
    && make clean  \
    && make all || { echo "make all failed"; exit 0; }   \
    && cd dyc/  \
    && make dyc || { echo "make all failed"; exit 0; }   \
    && make linux  \
    && make dyc  \
    && cd ..  \
    && make all

WORKDIR /home