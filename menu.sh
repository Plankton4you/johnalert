#!/bin/bash
clear
echo -e "
[ 01 ] - fsociety
[ 02 ] - Metasploit
[ 03 ] - Nmap
[ 04 ] - John The Ripper
[ 05 ] - IP / Lokasi Tracker
[ 06 ] - DDoS Tools
[ 07 ] - Google Dorking
[ 08 ] - Sherlock
[ 09 ] - Holehe
[ 10 ] - Skiptracer
[ 11 ] - Scylla / Skymem
[ 12 ] - IntelX.io
[ 13 ] - Social Searcher
[ 14 ] - HaveIBeenPwned
[ 15 ] - Maltego (Guide)
[ 16 ] - Recon-ng
[ 00 ] - Exit
"
read -p "[?] Pilih: " pilih
case $pilih in
  01) cd tools/fsociety && bash fsociety.sh ;;
  02) msfconsole ;;
  03) nmap ;;
  04) john --help ;;
  05) cd tools/iptracker && bash run.sh ;;
  06) cd tools/ddos && bash run.sh ;;
  07) cd tools/google-dork && python3 dorks-eye.py ;;
  08) cd tools/sherlock && python3 sherlock.py ;;
  09) cd tools/holehe && python3 holehe.py ;;
  10) cd tools/skiptracer && python3 skiptracer.py ;;
  11) cd tools/scylla-skymem && python3 scylla.py ;;
  12) cd tools/intelx && python3 intelx.py ;;
  13) cd tools/socialsearch && python3 searcher.py ;;
  14) cd tools/pwnedchecker && python3 checker.py ;;
  15) cat tools/maltego.txt ;;
  16) cd tools/recon-ng && ./recon-ng ;;
  00) pkill mpv && exit ;;
  *) bash menu.sh ;;
esac
