FROM ubuntu:20.04
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y wine wget unzip \
    # For some reason, we need a separate step for adding a wine32 architecture
    && dpkg --add-architecture i386 \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y wine32 \
    && wget https://lastools.github.io/download/LAStools.zip \
    && unzip LAStools.zip \
    # Run one program to configure wine
    && wine LAStools/bin/las2las -h
COPY entrypoint.sh entrypoint.sh
WORKDIR /lastools
ENTRYPOINT ["/./entrypoint.sh"]




