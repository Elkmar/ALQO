mkdir alqo
cd alqo
wget https://builds.alqo.org/linux/alqod &&chmod -f 777 alqod
wget https://builds.alqo.org/linux/alqo-cli &&chmod -f 777 alqo-cli
./alqod
./alqo-cli stop
cd
cd ./.alqo
nano ./alqo.conf
cd
cd alqo
./alqod
