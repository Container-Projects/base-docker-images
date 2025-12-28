FROM ghcr.io/jhipster-projects/jhipster-generators:v8.11.0

USER root

# install generator-jhipster-react-native
RUN npm install -g generator-jhipster-react-native eas-cli

RUN mkdir -p /home/jhipster/app
USER jhipster
ENV PATH $PATH:/usr/bin
WORKDIR "/home/jhipster/app"
VOLUME ["/home/jhipster/app"]
CMD ["rnhipster", "app"]