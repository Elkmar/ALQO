#correct some missing libraries
sudo add-apt-repository ppa:ubuntu-toolchain-r/test && apt-get update && apt-get upgrade && apt-get dist-upgrade

cd /root/alqo/ALQO-v6.3.0.0-c7fc25cad-lin64

#stop the precedent version of alqo
./alqo-cli stop
echo "Waiting for 10 seconds..."
sleep 10

#remove the precedent version of alqo
cd ../
rm -rf ALQO-v6.3.0.0-c7fc25cad-lin64

#download ALQO version 6.4.00
wget https://github.com/ALQO-Universe/ALQO/releases/download/v6.4.0.0-7d5f56499/ALQO-v6.4.0.0-7d5f56499-lin64.tgz

#extract the archive and erase the archive
tar xvf ALQO-v6.4.0.0-7d5f56499-lin64.tgz
rm ALQO-v6.4.0.0-7d5f56499-lin64.tgz

#run the client
cd ALQO-v6.4.0.0-7d5f56499-lin64
./alqod
