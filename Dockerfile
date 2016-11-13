FROM ubuntu
MAINTAINER Phil Huang <wrenth04@gmail.com>
RUN apt-get -y update \
  && apt-get install -y lib32ncurses5 lib32z1 \
  && mkdir /xware
WORKDIR /xware
COPY xware /xware
CMD ["./start"]

