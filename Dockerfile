FROM summerwind/actions-runner-dind:v2.304.0-ubuntu-22.04
USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl=7.81.0-1ubuntu1.10 \
    jq=1.6-2.1ubuntu3 \
    build-essential=12.9ubuntu3 \
    nodejs=12.22.9~dfsg-1ubuntu3 \
    npm=8.5.1~ds-1 \
    awscli=1.22.34-1

USER runner
WORKDIR /home/runner
ENTRYPOINT ["/bin/bash", "-c"]
CMD ["entrypoint-dind.sh"]
