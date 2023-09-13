FROM debian:12
RUN apt update && apt install git vim -y
RUN mkdir hoge && cd hoge
WORKDIR /hoge
RUN git clone https://github.com/hitohata/dotfiles.git .
