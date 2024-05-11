#!/bin/sh
. /etc/profile
. ~/.bash_profile 
rm -rf "/tmp/speed"
"/root/speedtest"  >  "/tmp/speed"
ls1=`cat /tmp/speed | grep Upload | awk '{gsub(/^\s+|\s+$/, "");print}'`
ls2=`cat /tmp/speed | grep Download | awk '{gsub(/^\s+|\s+$/, "");print}'`
lsn=hostname
tgid=
tgbotapi=
curl --data chat_id="$tgid" --data-urlencode "text=§$lsn§

$ls1
$ls2" "https://api.telegram.org/bot$7106451814:AAGaoRK04BL-rqv9Hy1YHZrSZDy-2VHya8Y/sendMessage?parse_mode=HTML"
