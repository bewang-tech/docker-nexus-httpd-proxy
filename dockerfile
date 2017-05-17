FROM centos:7

RUN yum install -y httpd mod_ssl mod_auth_gssapi openssl \
    && yum clean all -y

COPY nexus-proxy.conf /etc/httpd/conf/httpd.conf

EXPOSE 80 443 5000

CMD [ "/usr/sbin/httpd", "-DFOREGROUND" ]
