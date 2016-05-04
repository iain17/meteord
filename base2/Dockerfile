FROM iain17/meteord-base
MAINTAINER iain17

#Weasyprint (html2pdf)
RUN apt-get -y install python-dev python-pip python-lxml libcairo2 libpango1.0-0 libgdk-pixbuf2.0-0 libffi-dev shared-mime-info
RUN apt-get install -y python-lxml libcairo2 libpango1.0-0 libgdk-pixbuf2.0-0 libffi-dev shared-mime-info
RUN apt-get -y install libxml2-dev libxslt1-dev python-dev python-dev
RUN apt-get -y install wget git python3 python3-setuptools
RUN pip install pyphen six
RUN pip install -U pip
RUN pip install --upgrade cffi
RUN pip install WeasyPrint

#imagemagick (general nonsense to edit images)
RUN apt-get -y install imagemagick apt-utils

#pdf2svg
RUN apt-get -y install pdf2svg

#pdftk (briefpapier)
RUN apt-get -y install pdftk