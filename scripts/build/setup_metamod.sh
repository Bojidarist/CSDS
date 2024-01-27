# Install metamod (thanks to https://github.com/archont94/counter-strike1.6)
mkdir -p /server/hlds/cstrike/addons/metamod/dlls && \
curl -sqL "http://prdownloads.sourceforge.net/metamod/metamod-1.20-linux.tar.gz" | tar zxf - -C /server/hlds/cstrike/addons/metamod/dlls && \
touch /server/hlds/cstrike/addons/metamod/plugins.ini && \
sed -i 's/gamedll_linux "dlls\/cs.so"/#gamedll_linux "dlls\/cs.so"\ngamedll_linux "addons\/metamod\/dlls\/metamod.so"/' /server/hlds/cstrike/liblist.gam && \
touch /.setup_metamod_complete
