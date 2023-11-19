FROM ubuntu:mantic

# Install dependencies
RUN apt update && apt install -y software-properties-common

RUN add-apt-repository multiverse && \
    dpkg --add-architecture i386 && \
    apt update && \ 
    apt install -y lib32gcc-s1 curl

RUN mkdir /root/Steam && \
    mkdir /root/.steam && \
    curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf - -C /root/Steam

# Run steamcmd update file for cstrike
COPY ./steamcmd_update_files/cstrike_default.txt /root/Steam/cstrike_default.txt
RUN /root/Steam/steamcmd.sh +runscript /root/Steam/cstrike_default.txt

# Install metamod (thanks to https://github.com/archont94/counter-strike1.6)
RUN mkdir -p /hlds/cstrike/addons/metamod/dlls && \
    curl -sqL "http://prdownloads.sourceforge.net/metamod/metamod-1.20-linux.tar.gz" | tar zxf - -C /hlds/cstrike/addons/metamod/dlls && \
    touch /hlds/cstrike/addons/metamod/plugins.ini && \
    sed -i 's/gamedll_linux "dlls\/cs.so"/#gamedll_linux "dlls\/cs.so"\ngamedll_linux "addons\/metamod\/dlls\/metamod.so"/'  /hlds/cstrike/liblist.gam

# install amxmodx
RUN curl -sqL "https://www.amxmodx.org/release/amxmodx-1.8.2-base-linux.tar.gz" | tar zxf - -C /hlds/cstrike && \
    curl -sqL "https://www.amxmodx.org/release/amxmodx-1.8.2-cstrike-linux.tar.gz" | tar zxf - -C /hlds/cstrike && \
    echo "linux addons/amxmodx/dlls/amxmodx_mm_i386.so" >> /hlds/cstrike/addons/metamod/plugins.ini

# Setup entrypoint
RUN cp /hlds/cstrike/server.cfg /hlds/cstrike/server_orig.cfg
COPY ./entrypoints/cstrike_default_entrypoint.sh /scripts/cstrike_default_entrypoint.sh
RUN chmod +x /scripts/cstrike_default_entrypoint.sh

WORKDIR /hlds
ENTRYPOINT ["sh", "/scripts/cstrike_default_entrypoint.sh"]
