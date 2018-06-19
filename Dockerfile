

FROM centos:7
MAINTAINER CHETAN SHARMA

RUN yum -y --setopt=tsflags=nodocs update && \
    yum -y --setopt=tsflags=nodocs install httpd && \
    yum clean all
EXPOSE 80
CMD /usr/share/tomcat/conf -DFOREGROUND
