FROM ubuntu:bionic

WORKDIR /root/

ADD https://github.com/vergecurrency/VERGE/releases/download/v6.0.2/verge-6.0.2-x86_64-linux-gnu.tar.gz /root/
RUN tar -zxvf verge-6.0.2-x86_64-linux-gnu.tar.gz
RUN rm -rf verge-6.0.2-x86_64-linux-gnu.tar.gz
RUN mkdir .VERGE

COPY VERGE .VERGE

WORKDIR /root/verge-6.0.2/bin

EXPOSE 20102
EXPOSE 21102

CMD [ "./verged" ]
