if [[ -n "$REHLDS" ]]; then
    mkdir -p /server/hlds/cstrike/addons/metamod && \
    mkdir -p /tmp/metamod && \
    curl -sqL "https://github.com/theAsmodai/metamod-r/releases/download/1.3.0.138/metamod-bin-1.3.0.138.zip" -o /tmp/metamod/metamod.zip && \
    unzip /tmp/metamod/metamod.zip -d /tmp/metamod/metamod_r && \
    cp -r /tmp/metamod/metamod_r/addons/metamod/* /server/hlds/cstrike/addons/metamod && \
    touch /server/hlds/cstrike/addons/metamod/plugins.ini && \
    sed -i 's/gamedll_linux "dlls\/cs.so"/#gamedll_linux "dlls\/cs.so"\ngamedll_linux "addons\/metamod\/metamod_i386.so"/' /server/hlds/cstrike/liblist.gam && \
    rm -rf /tmp/metamod && \
    touch /.setup_metamod_complete
else
    # Install metamod (thanks to https://github.com/archont94/counter-strike1.6)
    mkdir -p /server/hlds/cstrike/addons/metamod/dlls && \
    curl -sqL "http://prdownloads.sourceforge.net/metamod/metamod-1.20-linux.tar.gz" | tar zxf - -C /server/hlds/cstrike/addons/metamod/dlls && \
    touch /server/hlds/cstrike/addons/metamod/plugins.ini && \
    sed -i 's/gamedll_linux "dlls\/cs.so"/#gamedll_linux "dlls\/cs.so"\ngamedll_linux "addons\/metamod\/dlls\/metamod.so"/' /server/hlds/cstrike/liblist.gam && \
    touch /.setup_metamod_complete
fi
