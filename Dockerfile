FROM ubuntu:16.04
RUN echo "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-8 main" >> /etc/apt/sources.list
RUN apt-key adv --fetch-keys "https://apt.llvm.org/llvm-snapshot.gpg.key"
RUN apt-get update
RUN apt-get dist-upgrade -y clang-8 libc++-8-dev libc++abi-8-dev
RUN apt-get autoremove -y
RUN apt-get clean
