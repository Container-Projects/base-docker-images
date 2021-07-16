FROM ghcr.io/container-projects/base-docker-images:node-12-npm-latest

# install yo
RUN npm install -g yo 
# install jhipster generator
RUN npm install -g generator-jhipster@5.1.0
 
RUN \
  # configure the "jhipster" user
  groupadd jhipster && \
  useradd jhipster -s /bin/bash -m -g jhipster -G sudo && \
  echo jhipster:jhipster |chpasswd 
RUN mkdir /home/jhipster/app
USER jhipster
ENV PATH $PATH:/usr/bin
WORKDIR "/home/jhipster/app"
VOLUME ["/home/jhipster/app"]
CMD ["yo", "jhipster"]
