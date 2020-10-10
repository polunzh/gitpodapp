FROM gitpod/workspace-full

ENV HOME=/home/arcblock
ENV GROUP=arcblock
ENV USER=arcblock

USER root
RUN apt-get upgrade -yy && \
    apt-get update && \
    apt-get clean && \
    apt-get update

RUN groupadd arcblock && \
    useradd -g $GROUP $USER --home $HOME -s /bin/bash -p "$(openssl passwd -1 arcblock)" && \
    npm install -g @abtnode/cli

RUN chown -R $USER $HOME && \
    usermod -aG sudo $USER

USER $USER
WORKDIR $HOME
