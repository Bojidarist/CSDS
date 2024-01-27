apt update && apt install -y software-properties-common

add-apt-repository multiverse && \
dpkg --add-architecture i386 && \
apt update && \ 
apt install -y lib32gcc-s1 curl lib32stdc++6 vim && \
apt-get clean && \
rm -rf /var/lib/apt/lists/* && \
touch /.install_deps_complete
