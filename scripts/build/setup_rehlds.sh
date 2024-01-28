if [[ -n "$REHLDS" ]]; then
    mkdir -p /tmp/rehlds && \
    mkdir -p /tmp/regamedll && \
    mkdir -p /tmp/reapi && \
    curl -sqL "https://github.com/dreamstalker/rehlds/releases/download/3.13.0.788/rehlds-bin-3.13.0.788.zip" > /tmp/rehlds/rehlds.zip && \
    curl -sqL "https://github.com/s1lentq/ReGameDLL_CS/releases/download/5.26.0.668/regamedll-bin-5.26.0.668.zip" > /tmp/regamedll/regamedll.zip && \
    curl -sqL "https://github.com/s1lentq/reapi/releases/download/5.24.0.300/reapi-bin-5.24.0.300.zip" > /tmp/reapi/reapi.zip && \
    unzip /tmp/rehlds/rehlds.zip -d /tmp/rehlds/rehlds && \
    unzip /tmp/regamedll/regamedll.zip -d /tmp/regamedll/regamedll && \
    unzip /tmp/reapi/reapi.zip -d /tmp/reapi/reapi && \
    cp -r /tmp/rehlds/rehlds/bin/linux32/* /server/hlds && \
    cp -r /tmp/regamedll/regamedll/bin/linux32/* /server/hlds && \
    cp -r /tmp/reapi/reapi/addons/amxmodx/* /server/hlds/cstrike/addons/amxmodx && \
    rm -rf /tmp/rehlds && \
    rm -rf /tmp/regamedll && \
    rm -rf /tmp/reapi && \
    touch /.setup_rehlds_complete
fi
