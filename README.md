# CSDS

Counter-Strike 1.6 dedicated server with metamod and amxmodx.

## Usage

Using ```docker run```:

```bash
docker run -p 27015:27015/udp -p 27015:27015 -e SERVER_NAME=CSDS -e SV_LAN=0 -e MAX_PLAYERS=16 bojidarist/csds:csds
```

Using ```docker-compose```:

1. Clone the repository.
```bash
# HTTPS
git clone https://github.com/Bojidarist/CSDS.git
# SSH
git clone git@github.com:Bojidarist/CSDS.git
```
2. Run ```docker-compose up``` in the root of the repository.

```bash
docker-compose up
```
