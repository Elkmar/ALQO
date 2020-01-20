cd alqo

#download ALQO version 6.3.00
wget https://github.com/ALQO-Universe/ALQO/releases/download/v6.4.0.0-7d5f56499/ALQO-v6.4.0.0-7d5f56499-lin64.tgz

#extract the archive and erase the archive
tar xvf ALQO-v6.4.0.0-7d5f56499-lin64.tgz
rm ALQO-v6.4.0.0-7d5f56499-lin64.tgz

#run the client
cd ALQO-v6.4.0.0-7d5f56499-lin64.tgz
./alqod
