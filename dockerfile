FROM centos:latest
MAINTAINER shivansh.verma766@gmail.com
RUN yum install -y httpd \
 zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page295/antique-cafe.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip antique-cafe.zip
RUN cp -cvrf markups-antique-cafe
RUN rm -rf _MACOSX markups-antique-cafe antique-cafe.zip
CMD ["/usr/bin/httpd, "-D", "FOREGROUND"]
EXPOSE 80
