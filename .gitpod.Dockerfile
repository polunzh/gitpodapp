FROM gitpod/workspace-full

USER gitpod

RUN brew install nginx
RUN echo PATH=/home/linuxbrew/.linuxbrew/bin:$PATH >> ~/.bashrc
RUN which nginx
RUN sudo setcap CAP_NET_BIND_SERVICE=+eip `which nginx`
RUN npm install @abtnode/cli -g
