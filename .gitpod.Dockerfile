FROM gitpod/workspace-full

USER root
# RUN sysctl net.ipv4.ip_unprivileged_port_start=1
RUN apt-get install nginx -yy
# RUN setcap CAP_NET_BIND_SERVICE=+eip /usr/sbin/nginx

# USER gitpod
RUN npm install -g pm2 @abtnode/cli
