# Creating steam_appid.txt file to avoid server crash on initial run
if [[ -n "$REHLDS" ]]; then
    /root/.steam/steamcmd.sh +runscript /files/steamcmd_update_files/cstrike_steam_legacy.txt && \
    echo "10" > /server/hlds/steam_appid.txt && \
    touch /.setup_hlds_complete
else
    /root/.steam/steamcmd.sh +runscript /files/steamcmd_update_files/cstrike.txt && \
    echo "10" > /server/hlds/steam_appid.txt && \
    touch /.setup_hlds_complete
fi
