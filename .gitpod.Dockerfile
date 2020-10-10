FROM gitpod/workspace-full

USER root

RUN sysctl -p
RUN echo "net.ipv4.ip_unprivileged_port_start=1" >> /etc/sysctl.conf
RUN cat /etc/sysctl.conf

USER gitpod

RUN brew install nginx
RUN echo PATH=/home/linuxbrew/.linuxbrew/bin:$PATH >> ~/.bashrc
RUN npm install @abtnode/cli -g
