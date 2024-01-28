cd /server/hlds

if [[ ! -e "/.gamemode_csdm_setup_complete" ]]; then
    mkdir -p /tmp/csdm && \
    curl -sqL "https://github.com/wopox1337/CSDM-ReAPI/releases/download/v1.0.8/CSDM-ReAPI-v1.0.8.zip" > /tmp/csdm/csdm.zip && \
    unzip /tmp/csdm/csdm.zip -d /tmp/csdm/csdm && \
    cp -r /tmp/csdm/csdm/* /server/hlds/ && \
    rm -rf /tmp/csdm && \
    touch /.gamemode_csdm_setup_complete
fi

/server/hlds/hlds_run -game cstrike -strictportbind -ip 0.0.0.0 -port 27015 -pingboost 2 +sv_lan $SV_LAN +map $DEFAULT_MAP -maxplayers $MAX_PLAYERS
