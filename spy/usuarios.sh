#!/bin/bash

for i in $(seq 1 4); do
        useradd -ms /bin/bash spy$i -c "spy$i level$i"
        pass=$(cat /etc/spy_pass/spy$i)
        echo "spy$i:$pass" | chpasswd
        chmod 750 /etc/spy_pass/spy$i
        chown -R root:spy$i /etc/spy_pass/spy$i
	chown -R root:spy$i /home/spy$i
	chattr -R +i /home/spy{1..4}
        if [ $i -eq 1 ]; then
		cp /etc/spy_pass/spy2 spy2.txt
		steghide embed -p "$(cat /etc/spy_pass/spy1)" -ef spy2.txt -cf astroman.jpeg
		rm spy2.txt && mv astroman.jpeg /home/spy1/astroman.jpeg
		chown spy1:spy1 /home/spy1/astroman.jpeg
        fi
	if [ $i -eq 2 ]; then
		exiftool -comment="la contraseña es $(cat /etc/spy_pass/spy3)" balloon.jpg
		cp balloon.jpg /home/spy2/
	fi
	if [ $i -eq 3 ]; then
		exiftool -comment="La contraseña es $(cat /etc/spy_pass/spy4)" jpg_entropy/cello-*
		rm jpg_entropy/cello-*.jpg_original
		mv jpg_entropy/ /home/spy3/
	fi
done
