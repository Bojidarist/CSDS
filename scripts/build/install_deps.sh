export DEBIAN_FRONTEND=noninteractive

apt update && apt install -yq software-properties-common && \
add-apt-repository -y multiverse && \
dpkg --add-architecture i386 && \
apt update && \ 
apt install -yq lib32gcc-s1 lib32stdc++6 curl vim unzip && \
apt-get clean && \
rm -rf /var/lib/apt/lists/* && \
touch /.install_deps_complete
