FROM ubuntu:16.04

RUN apt-get update && \
    apt-get -y dist-upgrade && \
    apt-get -y install texlive-full

RUN mkdir /cv
WORKDIR /cv
CMD xelatex /cv/cv.tex 
