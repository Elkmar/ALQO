#create an alqo directory
mkdir alqo
cd alqo

#download ALQO version 6.3.00
wget https://github.com/ALQO-Universe/ALQO/releases/download/v6.4.0.0-7d5f56499/ALQO-v6.4.0.0-7d5f56499-lin64.tgz

#extract the archive and erase the archive
tar xvf ALQO-v6.4.0.0-7d5f56499-lin64.tgz
rm ALQO-v6.4.0.0-7d5f56499-lin64.tgz

#run alqo client to create the conf files then stop it 
cd ALQO-v6.4.0.0-7d5f56499-lin64.tgz
./alqod -daemon
echo "Waiting for 10 seconds..."
sleep 10
./alqo-cli stop

#go to conf file in order to edit
cd /root/.alqocrypto
nano ./alqo.conf

#run the client again
cd /root/alqo/ALQO-v6.4.0.0-7d5f56499-lin64.tgz
./alqod -daemon
