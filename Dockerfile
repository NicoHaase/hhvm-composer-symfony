FROM debian:jessie

MAINTAINER "Nico Haase" <nico@nicohaase.de>

RUN apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0x5a16e7281be7a449
RUN echo deb http://dl.hhvm.com/debian jessie main | tee /etc/apt/sources.list.d/hhvm.list
RUN apt-get update && apt-get install -y hhvm curl git
RUN curl -sS https://getcomposer.org/installer | hhvm --php
RUN mv composer.phar /usr/local/bin/composer

ADD php-hhvm.ini /etc/hhvm/php.ini
ADD runComposer.sh /usr/local/bin/runComposer.sh
RUN chmod +x /usr/local/bin/runComposer.sh

CMD /usr/local/bin/runComposer.sh