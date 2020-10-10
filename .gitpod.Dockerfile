FROM gitpod/workspace-full

RUN brew install nginx
RUN echo PATH=/home/linuxbrew/.linuxbrew/bin:$PATH >> ~/.bashrc
RUN sudo setcap CAP_NET_BIND_SERVICE=+eip `which nginx`
RUN npm install @abtnode/cli -g
