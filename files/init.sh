[ "$(ls -A /etc/asterisk)" ] && echo "etc folder has files, not doing anything" || copy * /etc/asterisk
asterisk -f
