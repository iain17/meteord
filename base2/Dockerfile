FROM iain17/meteord-base
MAINTAINER iain17

#imagemagick (general nonsense to edit images)
RUN apt-get -y install imagemagick apt-utils

#Weasyprint (html2pdf)
RUN apt-get -y install python-dev python-pip python-lxml libcairo2 libpango1.0-0 libgdk-pixbuf2.0-0 libffi-dev shared-mime-info
RUN apt-get -y install libxml2-dev libxslt1-dev python-dev python-dev
RUN apt-get -y install wget git python3 python3-setuptools
RUN pip install -U pip
RUN pip install WeasyPrint

#pdf2svg
RUN apt-get -y install pdf2svg

#pdftk (briefpapier)
RUN apt-get -y install pdftk

#Phantomjs (generate html)
RUN apt-get -y install git build-essential g++ flex bison gperf ruby perl libsqlite3-dev libfontconfig1-dev libicu-dev libfreetype6 libssl-dev libpng-dev libjpeg-dev python libx11-dev libxext-dev
#RUN git clone git://github.com/ariya/phantomjs.git;cd phantomjs;git checkout 2.0;./build.sh --confirm

RUN apt-get -y update
RUN apt-get -y install build-essential chrpath libssl-dev libxft-dev
RUN apt-get -y install libfreetype6 libfreetype6-dev
RUN apt-get -y install libfontconfig1 libfontconfig1-dev

RUN \
  apt-get update && \
  apt-get upgrade -y && \
  apt-get install -y vim git wget libfreetype6 libfontconfig bzip2 && \
  mkdir -p /srv/var && \
  wget -q --no-check-certificate -O /tmp/phantomjs.tar.bz2 https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 && \
  tar -xjf /tmp/phantomjs.tar.bz2 -C /tmp && \
  rm -f /tmp/phantomjs.tar.bz2 && \
  mv /tmp/phantomjs-2.1.1-linux-x86_64/ /srv/var/phantomjs && \
  rm -f /usr/bin/phantomjs && \
  ln -s /srv/var/phantomjs/bin/phantomjs /usr/bin/phantomjs && \
  git clone https://github.com/n1k0/casperjs.git /srv/var/casperjs && \
  rm -f /usr/bin/casperjs && \
  ln -s /srv/var/casperjs/bin/casperjs /usr/bin/casperjs && \
  apt-get autoremove -y && \
  apt-get clean all

RUN phantomjs -v
RUN pdf2svg
RUN WeasyPrint