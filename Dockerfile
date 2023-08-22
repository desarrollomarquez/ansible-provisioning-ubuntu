FROM ubuntu:jammy
RUN 
  apt-get update && \
  apt-get install -y software-properties-common && \
  apt-add-repository -y ppa:ansible/ansible && \
  apt-get update && \
  apt-get install -y sudo ansible && \
  # cleanup
  apt-get clean 
  # update
  apt update
COPY . /home/app
RUN chown -R app /home/app/
WORKDIR /home/app/
USER ubuntu
CMD ["tail", "-f", "/home/app/README.md"]