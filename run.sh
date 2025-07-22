#!/bin/bash
clear
mpv --no-video --loop assets/sound.mp3 >/dev/null 2>&1 &
cat assets/ascii.txt | lolcat -a -d 1
echo
echo "Untuk KEY hubungi: wa.me/6281317444391"
read -p "[?] Masukkan KEY: " KEY
if [ "$KEY" == "John_Alert_Savador" ]; then
    clear
    cat assets/anims/glitch.txt | lolcat -a -d 2
    sleep 2
    bash menu.sh
else
    echo "[!] Key Salah."
    sleep 1
    bash run.sh
fi
