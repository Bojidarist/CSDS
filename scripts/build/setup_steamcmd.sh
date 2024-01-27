mkdir /root/Steam && \
mkdir /root/.steam && \
curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf - -C /root/.steam/ && \
touch /.setup_steamcmd_complete
