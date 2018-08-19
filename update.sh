cd /home/alqo/ALQO
cd /home/alqo/alqo

wget -N https://github.com/ALQOCRYPTO/ALQO/releases/download/v3.5/alqo-cli
chmod -f 777 alqo-cli
./alqo-cli stop

echo "Waiting 20 seconds before continuing"
sleep 20


wget -N https://github.com/ALQOCRYPTO/ALQO/releases/download/v3.5/alqod
chmod -f 777 alqod

/home/alqo/ALQO/alqod -reindex
/home/alqo/alqo/alqod -reindex
