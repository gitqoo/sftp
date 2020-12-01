yum install docker -y
ssh-keygen -t rsa -b 4096 -f ssh_host_rsa_key -P "" < /dev/null
ssh-keygen -t ed25519 -f ssh_host_ed25519_key -P ""  < /dev/null
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&  sudo chmod +x /usr/local/bin/docker-compose  && docker-compose --version && systemctl restart docker && systemctl enable  docker

mkdir -p /efs/sftp/home
chmod +x ./start_sftp.sh

sleep 10
docker-compose up -d
