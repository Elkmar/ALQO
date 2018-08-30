cd /home/alqo/ALQO
cd /home/alqo/alqo

./alqo-cli stop

echo "Waiting 20 seconds before continuing"
sleep 20
apt-get install -y libevent-dev

wget -N https://github.com/ALQOCRYPTO/ALQO/releases/download/v4.1/alqo-cli
chmod -f 777 alqo-cli

sudo rm -r /home/alqo/.alqo/blocks
sudo rm -r /home/alqo/.alqo/chainstate
sudo rm -r /home/alqo/.alqo/sporks
sudo rm -r /home/alqo/.alqo/zerocoin
sudo rm /home/alqo/.alqo/mncache.dat
sudo rm /home/alqo/.alqo/mnpayments.dat
sudo rm /home/alqo/.alqo/debug.log
sudo wget https://github.com/ALQOCRYPTO/ALQO/releases/download/v4.1/chain_unix.tgz -O /home/alqo/.alqo/chain.tgz
sudo tar -xvzf /home/alqo/.alqo/chain.tgz -C /home/alqo/.alqo/

echo "Waiting 10 seconds before continuing"
sleep 10

wget -N https://github.com/ALQOCRYPTO/ALQO/releases/download/v4.1/alqod
chmod -f 777 alqod

echo "Waiting 10 seconds before continuing"
sleep 10

./alqod -reindex
