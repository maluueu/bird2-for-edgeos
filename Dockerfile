FROM debian:stretch

ARG CROSS_COMPILE_ARCH=mipsel

RUN dpkg --add-architecture $CROSS_COMPILE_ARCH \
    && apt-get update \
    && apt-get install -y wget qemu-user-static 'binfmt*' flex bison make libncurses5-dev  \
                          gcc-6-${CROSS_COMPILE_ARCH}-linux-gnu libc6-${CROSS_COMPILE_ARCH}-cross libreadline-dev:$CROSS_COMPILE_ARCH \
    && apt-get clean
