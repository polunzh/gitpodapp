FROM gitpod/workspace-full

USER root
RUN apt-get install nginx -yy
RUN setcap CAP_NET_BIND_SERVICE=+eip /usr/sbin/nginx

USER gitpod
RUN npm install -g pm2 @abtnode/cli
