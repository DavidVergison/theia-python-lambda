FROM theiaide/theia-python:latest

COPY scripts/install_python.sh /tmp/
RUN /bin/bash /tmp/install_python.sh && rm /tmp/install_python.sh

COPY scripts/install_aws.sh /tmp/
RUN /bin/bash /tmp/install_aws.sh && rm /tmp/install_aws.sh

COPY scripts/install_docker.sh /tmp/
RUN /bin/bash /tmp/install_docker.sh && rm /tmp/install_docker.sh
VOLUME /var/lib/docker
