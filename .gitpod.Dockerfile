FROM gitpod/workspace-full

RUN brew install nginx
RUN which nginx
RUN sudo setcap CAP_NET_BIND_SERVICE=+eip /usr/sbin/nginx
RUN sudo setcap CAP_NET_BIND_SERVICE=+eip `which nginx`
RUN echo PATH=/home/linuxbrew/.linuxbrew/bin:$PATH >> ~/.bashrc
RUN npm install @abtnode/cli -g
