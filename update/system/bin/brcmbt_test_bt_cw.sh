
/system/bin/brcmbt --quiet --pipe /data/brcmbt_fifo --bdaddr 01:02:03:04:05:06 &

sleep 1

echo "hcicmd 03 0C 00" > /data/brcmbt_fifo

echo "hcicmd 14 FC 07 00 29 00 00 08 0A 00" > /data/brcmbt_fifo

echo "quit" > /data/brcmbt_fifo


