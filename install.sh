#create an alqo directory
mkdir alqo
cd alqo

#download ALQO version 6.3.00
wget https://github.com/ALQO-Universe/ALQO/releases/download/v6.3.0.0-c7fc25cad/ALQO-v6.3.0.0-c7fc25cad-lin64.tgz

#extract the archive and erase the archive
tar xvf ALQO-v6.3.0.0-c7fc25cad-lin64.tgz
rm ALQO-v6.3.0.0-c7fc25cad-lin64.tgz

#run alqo client to create the conf files then stop it 
cd ALQO-v6.3.0.0-c7fc25cad-lin64
./alqod -daemon
./alqo-cli stop

#go to conf file in order to edit
cd /root/.alqocrypto
nano ./alqo.conf

#run the client again
cd /root/alqo/ALQO-v6.3.0.0-c7fc25cad-lin64
./alqod -daemon
