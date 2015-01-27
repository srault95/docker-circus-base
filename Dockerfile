FROM srault95/docker-python-base:dev

MAINTAINER <stephane.rault@radicalspam.org>

RUN pip install https://github.com/circus-tent/circus/tarball/master
RUN pip install https://github.com/circus-tent/chaussette/tarball/master
RUN pip install envtpl

#circus-web 

#ENV CIRCUS_STATSD 1
#ENV CIRCUS_HTTPD 1
#ENV CIRCUS_DEBUG 1

ADD conf/circus.ini.tpl /etc/
ADD start.sh /bin/
RUN chmod +x /bin/start.sh

RUN \
    mkdir /etc/circus.d ;\
    mkdir /etc/setup.d

EXPOSE 8888

# REP circusctl / l'admin web
EXPOSE 5555

# pub/sub Events
EXPOSE 5556

# pub/sub Stats
EXPOSE 5557


CMD ["/bin/start.sh"]