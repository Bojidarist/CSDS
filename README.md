# CSDS

Counter-Strike 1.6 dedicated server with metamod and amxmodx.

## Usage

Using ```docker run```:

```bash
docker run -it -p 27015:27015/udp bojidarist/csds:latest
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

## Environment variables

| Name         | Default Value   |
|--------------|-----------------|
| GAMEMODE     | classic         |
| REHLDS       | 1 (recommended) |
| SV_CHEATS    | 0               |
| MP_TIMELIMIT | 20              |
| SV_MAXSPEED  | 320             |
| SERVER_NAME  | CSDS            |
| PAUSABLE     | 0               |
| SV_AIM       | 0               |
| DEFAULT_MAP  | de_dust2        |
| MAX_PLAYERS  | 16              |
| SV_LAN       | 0               |

## Gamemodes

| Name    | Description                                                                    |
|---------|--------------------------------------------------------------------------------|
| classic | Classic counter-strike game mode.                                              |
| csdm    | CSDM (Deathmatch) using [CSDM-ReAPI](https://github.com/wopox1337/CSDM-ReAPI). |
