#!/bin/bash

# Setup
. /scripts/init_variables.sh

if [[ ! -e "/.install_deps_complete" ]]; then
    /scripts/build/install_deps.sh
fi

if [[ ! -e "/.setup_steamcmd_complete" ]]; then
    /scripts/build/setup_steamcmd.sh
fi

if [[ ! -e "/.setup_hlds_complete" ]]; then
    /scripts/build/setup_hlds.sh
fi

if [[ ! -e "/.setup_metamod_complete" ]]; then
    /scripts/build/setup_metamod.sh
fi

if [[ ! -e "/.setup_amxmodx_complete" ]]; then
    /scripts/build/setup_amxmodx.sh
fi

if [[ ! -e "/.setup_rehlds_complete" ]]; then
    /scripts/build/setup_rehlds.sh
fi

if [[ ! -e "/.copy_server_config_complete" ]]; then
    /scripts/build/copy_server_config.sh
fi

# Run
. /scripts/run_$GAMEMODE.sh
