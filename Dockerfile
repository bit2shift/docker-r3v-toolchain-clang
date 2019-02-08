FROM ubuntu:18.04
RUN echo "deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic-8 main" >> /etc/apt/sources.list
RUN curl "https://apt.llvm.org/llvm-snapshot.gpg.key" | apt-key add -
RUN apt-get update
RUN apt-get dist-upgrade -y clang-8 libc++-8-dev libc++abi-8-dev
RUN apt-get autoremove -y
RUN apt-get clean
