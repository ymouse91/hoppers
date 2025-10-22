@echo off
REM Vaihda tähän kansio, jossa HTML/PWA-tiedostosi sijaitsevat
cd /d "%~dp0"

REM Näytä koneen paikallinen IP-osoite (esim. 192.168.1.123)
echo Your local IP addresses:
ipconfig | findstr /i "IPv4"

REM Käynnistä Pythonin HTTP-palvelin portissa 8006
echo Starting Python HTTP server for Hoppers at port 8006...
python -m http.server 8006 --bind 0.0.0.0

pause
