# Move default server config
mv /files/config/server.cfg /server/hlds/cstrike/server.cfg

# Disable auto aim
sed -i "s/^sv_aim .*/sv_aim $SV_AIM/" /server/hlds/cstrike/server.cfg

# Disable clients' ability to pause the server
sed -i "s/^pausable .*/pausable $PAUSABLE/" /server/hlds/cstrike/server.cfg

# Server name
sed -i "s/^hostname .*/hostname \"$SERVER_NAME\"/" /server/hlds/cstrike/server.cfg

# Maximum client movement speed 
sed -i "s/^sv_maxspeed .*/sv_maxspeed $SV_MAXSPEED/" /server/hlds/cstrike/server.cfg

# Time limit
sed -i "s/^mp_timelimit .*/mp_timelimit $MP_TIMELIMIT/" /server/hlds/cstrike/server.cfg

# Enable cheats
sed -i "s/^sv_cheats .*/sv_cheats $SV_CHEATS/" /server/hlds/cstrike/server.cfg

touch /.copy_server_config_complete
