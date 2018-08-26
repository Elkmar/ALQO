cd /home/alqo/ALQO
cd /home/alqo/alqo

./alqo-cli stop

echo "Waiting 20 seconds before continuing"
sleep 20
apt-get install -y libevent-dev

wget -N https://github.com/ALQOCRYPTO/ALQO/releases/download/ATLAS/alqo-cli
chmod -f 777 alqo-cli

wget -N https://github.com/ALQOCRYPTO/ALQO/releases/download/ATLAS/alqod
chmod -f 777 alqod

/home/alqo/ALQO/alqod -reindex
/home/alqo/alqo/alqod -reindex
