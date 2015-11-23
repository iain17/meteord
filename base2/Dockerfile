FROM iain17/meteord-base
MAINTAINER iain17

#imagemagick
RUN apt-get -y install imagemagick

#Weasyprint
RUN apt-get -y install python-dev python-pip python-lxml libcairo2 libpango1.0-0 libgdk-pixbuf2.0-0 libffi-dev shared-mime-info
RUN apt-get -y install libxml2-dev libxslt1-dev python-dev python-dev
RUN apt-get -y install wget
RUN pip install WeasyPrint

#pdf2svg
RUN apt-get -y install pdf2svg

#Phantomjs
RUN apt-get -y install git build-essential g++ flex bison gperf ruby perl libsqlite3-dev libfontconfig1-dev libicu-dev libfreetype6 libssl-dev libpng-dev libjpeg-dev python libx11-dev libxext-dev
RUN git clone git://github.com/ariya/phantomjs.git;cd phantomjs;git checkout 2.0;./build.sh --confirm