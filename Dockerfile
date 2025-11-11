FROM ghcr.io/swissdatasciencecenter/renku/py-basic-vscodium:2.10.0

USER root
# Install apt packages
# Add additional packages if needed 
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      curl

USER renku
# Install additional python packages - if not needed, remove the lines below
COPY requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt --no-cache-dir
