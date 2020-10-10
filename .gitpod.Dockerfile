FROM gitpod/workspace-full

USER root

RUN echo 0 > /proc/sys/net/ipv4/ip_unprivileged_port_start

USER gitpod

RUN brew install nginx
RUN echo PATH=/home/linuxbrew/.linuxbrew/bin:$PATH >> ~/.bashrc
RUN npm install @abtnode/cli -g
