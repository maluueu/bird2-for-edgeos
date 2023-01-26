FROM debian:stretch

RUN dpkg --add-architecture mips \
    && apt-get update \
    && apt-get install -y wget qemu-user-static 'binfmt*' gcc-6-mips-linux-gnu libc6-mips-cross flex bison make libncurses5-dev libreadline-dev:mips \
    && apt-get clean
