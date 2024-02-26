# minipkvm

## Hotspot
* ESSID: minipikvm-AP (based on `${HOSTNAME}-AP`)
* Password: `pikvmisawesome`
* URL: https://10.5.4.1/

## Users
User/password: `admin`/`admin`, `root`/`root`

## Enable ethernet shield
Edit: `/boot/config.txt`
Add:
```
dtparam=spi=on
dtoverlay=enc28j60
```

## Enable W5500 ethernet shield
Edit: `/boot/config.txt`
Add:
```
dtoverlay=anyspi,spi0-0,dev="w5500",speed=30000000
dtoverlay=w5500
```
