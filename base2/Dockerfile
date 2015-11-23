FROM focuswebsolutions/meteord-base
MAINTAINER focuswebsolutions

#imagemagick (general nonsense to edit images)
RUN apt-get -y install imagemagick

#Weasyprint (html2pdf)
RUN apt-get -y install python-dev python-pip python-lxml libcairo2 libpango1.0-0 libgdk-pixbuf2.0-0 libffi-dev shared-mime-info
RUN apt-get -y install libxml2-dev libxslt1-dev python-dev python-dev
RUN apt-get -y install wget
RUN pip install WeasyPrint

#pdf2svg
RUN apt-get -y install pdf2svg

#pdftk (briefpapier)
RUN apt-get -y install pdftk

#Phantomjs (generate html)
#RUN apt-get -y install git build-essential g++ flex bison gperf ruby perl libsqlite3-dev libfontconfig1-dev libicu-dev libfreetype6 libssl-dev libpng-dev libjpeg-dev python libx11-dev libxext-dev
#RUN git clone git://github.com/ariya/phantomjs.git;cd phantomjs;git checkout 2.0;./build.sh --confirm
RUN apt-get -y install build-essential chrpath libssl-dev libxft-dev
RUN apt-get -y install libfreetype6 libfreetype6-dev libfontconfig1 libfontconfig1-dev
RUN wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.8-linux-x86_64.tar.bz2; tar xjf phantomjs-1.9.8-linux-x86_64.tar.bz2;cp phantomjs-1.9.8-linux-x86_64/bin/phantomjs /usr/local/share/phantomjs;cp phantomjs-1.9.8-linux-x86_64/bin/phantomjs /usr/local/bin/phantomjs;cp phantomjs-1.9.8-linux-x86_64/bin/phantomjs /usr/bin/phantomjs;chmod +x /usr/bin/phantomjs;chmod +x /usr/local/share/phantomjs;chmod +x /usr/local/bin/phantomjs;