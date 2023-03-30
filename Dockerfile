FROM amd64/ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive
VOLUME /host:~
RUN apt-get update
RUN apt-get install -y build-essential gcc-multilib qemu-system strace gdb sudo python3 libsdl2-dev libreadline-dev llvm-11 git vim fish ssh
RUN useradd -ms /usr/bin/fish junran
RUN usermod -aG sudo junran
RUN echo 'junran:password' | chpasswd
RUN service ssh start
USER junran
WORKDIR /home/junran
