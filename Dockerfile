FROM srault95/docker-python-base

MAINTAINER <stephane.rault@radicalspam.org>

RUN curl -k -O https://bootstrap.pypa.io/get-pip.py && python get-pip.py && rm -f get-pip.py 

RUN pip install circus circus-web chaussette envtpl

ADD conf/circus.ini.tpl /etc/
ADD start.sh /bin/
RUN chmod +x /bin/start.sh

RUN \
    mkdir /etc/circus.d ;\
    mkdir /etc/setup.d

EXPOSE 8888

CMD ["/bin/start.sh"]