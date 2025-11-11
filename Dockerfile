FROM ghcr.io/swissdatasciencecenter/renku/py-basic-vscodium:2.10.0

USER root
# Install apt packages - specify additional packages if needed
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      curl

USER renku
