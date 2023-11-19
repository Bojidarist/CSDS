#!/bin/sh

# Set server config fields using environment variables
mv /hlds/cstrike/server_orig.cfg /hlds/cstrike/server.cfg
sed -i "s/hostname \"Counter-Strike 1.6 Server\"/hostname \"$SERVER_NAME\"/" /hlds/cstrike/server.cfg
/hlds/hlds_run -game cstrike -strictportbind -ip 0.0.0.0 -port 27015 -pingboost 2 +sv_lan $SV_LAN +map de_dust2 -maxplayers $MAX_PLAYERS
