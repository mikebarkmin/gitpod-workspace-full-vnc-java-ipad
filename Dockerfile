FROM gitpod/workspace-full-vnc:latest

COPY novnc-index.html /opt/novnc/index.html

USER gitpod

RUN bash -c ". /home/gitpod/.sdkman/bin/sdkman-init.sh && \
    sdk install java 8.0.345-zulu && \
    sdk default java 8.0.345-zulu"
