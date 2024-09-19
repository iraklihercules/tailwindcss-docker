FROM node:latest

RUN apt update

RUN echo 'alias ll="ls -al"' >> /root/.bashrc
RUN echo 'alias ll="ls -al"' >> /home/node/.bashrc

COPY --chown=node:node src /app
WORKDIR /app
