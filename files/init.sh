[ "$(ls -A /etc/asterisk)" ] && echo "etc folder has files, not doing anything" ||  tar -xz
f default-conf.tgz -C /etc/asterisk
asterisk -f
