# Install amxmodx using 1.10 to fix seg fault on client connect
curl -sqL "https://www.amxmodx.org/amxxdrop/1.10/amxmodx-1.10.0-git5467-base-linux.tar.gz" | tar zxf - -C /server/hlds/cstrike && \
curl -sqL "https://www.amxmodx.org/amxxdrop/1.10/amxmodx-1.10.0-git5467-cstrike-linux.tar.gz" | tar zxf - -C /server/hlds/cstrike && \
echo "linux addons/amxmodx/dlls/amxmodx_mm_i386.so" >> /server/hlds/cstrike/addons/metamod/plugins.ini && \
touch /.setup_amxmodx_complete
