#!/bin/bash

for i in $(seq 0 9); do
        useradd -ms /bin/bash samurai$i -c "samurai$i level$i"
        pass=$(cat /etc/samurai_pass/samurai$i)
        echo "samurai$i:$pass" | chpasswd samurai$i
        chmod -R 650 /etc/samurai_pass/samurai$i
        chown -R root:samurai$i /etc/samurai_pass/samurai$i
	chown -R root:samurai$i /home/samurai$i
	chattr -R +i /home/samurai$i
	userdel -r ubuntu 2>/dev/null

	if [ $i -eq 0 ]; then
		mv /etc/samurai_scripts/inhere/ /home/samurai$i/findit
		cp /etc/samurai_pass/samurai1 /home/samurai$i/findit/\-file07
		chmod -R 650 /home/samurai$i/findit/
		chown -R root:samurai$i /home/samurai$i/findit
	fi
	if [ $i -eq 1 ]; then
		mv /etc/samurai_scripts/finditplus/ /home/samurai$i/findit
		cat /etc/samurai_pass/samurai2 >> /home/samurai$i/findit/maybehere07/.file2
		chmod 640 /home/samurai$i/findit/maybehere07/.file2
		chown -R root:samurai$i /home/samurai$i/findit
	fi
        if [ $i -eq 2 ]; then
		echo "La contraseña es $(cat /etc/samurai_pass/samurai3)" |\
		tr '[A-Za-z]' '[N-ZA-Mn-za-m]' > /home/samurai2/data.txt && \
		chmod 640 /home/samurai$i/data.txt
		chown root:samurai2 /home/samurai2/data.txt
        fi
	if [ $i -eq 3 ]; then
	contenido=$(echo "La contraseña es $(cat /etc/samurai_pass/samurai4)")
	ruta="/home/samurai3"
	echo $contenido > $ruta/data9.bin
	gzip -q $ruta/data9.bin | mv $ruta/data9.bin.gz $ruta/data8.bin
	tar cvf $ruta/data6 $ruta/data8.bin
	bzip2 $ruta/data6 | mv $ruta/data6.bz2 $ruta/data6.bin
	tar cvf $ruta/data5.bin $ruta/data6.bin
	tar cvf $ruta/data4.bin $ruta/data5.bin
	gzip -q $ruta/data4.bin | mv $ruta/data4.bin.gz $ruta/data2
	bzip2 $ruta/data2 | mv $ruta/data2.bz2 $ruta/data2.bin
	gzip -q $ruta/data2.bin | mv $ruta/data2.bin.gz $ruta/data
	xxd $ruta/data > $ruta/data.txt
	rm $ruta/data
	rm $ruta/data{2..9}* 2>/dev/null
	chown root:samurai$i $ruta/data.txt
	chmod 640 $ruta/data.txt
	fi
	if [ $i -eq 5]; then 
		./openportSSL.sh &
	fi
	if [ $i -eq 6 ]; then
		cp passwords.new /home/samurai6/ && cp passwords.new /home/samurai6/passwords.old
		sed -i "42s/.*/$(cat \/etc\/samurai_pass\/samurai7)/" /home/samurai6/passwords.new
		chown root:samurai6 /home/samurai6/passwords.old /home/samurai6/passwords.new
	fi
	if [ $i -eq 7 ]; then
		echo -e "echo ¡Hasta luego, Samurai!\n exit 0" >> /home/samurai7/.bashrc
		cp /etc/samurai_pass/samurai8 /home/samurai7/readme.txt
		chown root:samurai7 /home/samurai7/readme.txt
	fi
	if [ $i -eq 8 ]; then
		sed -i "1049s/.*/<DT><A HREF='http:\/\/cyberflag.es\/passwordus.html\| This will be fixed, the password for samurai9 is $(cat \/etc\/samurai_pass\/samurai9)' ADD_DATE='1155384634' LAST_CHARSET='ISO-8859-1' ID='rdf:\#$2wIU71'>password to samurai9<\/A>/" .backup/bookmarks.html
		cp -r /etc/samurai_scripts/.backup /home/samurai8/
		chown -R root:samurai8 /home/samurai8/.backup
	fi

done
