FROM gitpod/workspace-full

USER gitpod

RUN brew install nginx
RUN echo PATH=/home/linuxbrew/.linuxbrew/bin:$PATH >> ~/.bashrc
RUN sudo setcap CAP_NET_BIND_SERVICE=+eip /home/linuxbrew/.linuxbrew/bin/nginx
RUN npm install @abtnode/cli -g
