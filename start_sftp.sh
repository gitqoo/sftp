OLDIFS=$IFS;
IFS=$'\n'

  usermod -d "/mogafx01" -g users -s /usr/sbin/nologin user01



IFS=$OLDIFS

sed -i -e 's/%h/\/home\/%u/' /etc/ssh/sshd_config
/usr/sbin/sshd -D -E /var/log/auth.log
