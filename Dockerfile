FROM ubuntu:16.04
RUN echo "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-8 main" >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6084F3CF814B57C1CF12EFD515CF4D18AF4F7421
RUN apt-get update
RUN apt-get dist-upgrade -y clang-8 libc++-8-dev libc++abi-8-dev
RUN apt-get autoremove -y
RUN apt-get clean
