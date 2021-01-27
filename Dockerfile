FROM node:alpine3.12

RUN  apk add --no-cache --update autoconf automake git gcc make g++ zlib zlib-dev pngquant shadow \
    python2 \
    musl-dev \
    libtool \
    nasm \
    tiff \
    jpeg \
    file \
    pkgconf \
    openjdk11

RUN echo '{ "allow_root" : true }' > /root/.bowerrc

RUN npm install -g bower
