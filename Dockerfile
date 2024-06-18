FROM debian:latest
ENV SHELL=/bin/bash

MAINTAINER Daniel Mateos <daniel.mateos23@educa.madrid.org>
WORKDIR /etc/samurai_scripts

# Se actualizan los paquetes. No tocar
RUN apt update && apt upgrade -y

#Se instalan los servicios necesarios
RUN apt install -y openssh-server \ 
		net-tools \
		dnsutils bzip2 \
		build-essential \
		vim-common \
		file \ 
		ncat iproute2 \ 
		nmap  \
		openssl

#Se copia copia contraseñas y scripts
COPY samurai_pass/* /etc/samurai_pass/
COPY inhere/ /etc/samurai_scripts/inhere
COPY finditplus/ /etc/samurai_scripts/finditplus
COPY samurai_scripts .

#Cambio de permisos y ejecucion de script usuarios.sh
RUN chmod +x usuarios.sh server.sh openportSSL.sh entrypoint.sh && \
	bash usuarios.sh
# SSH
RUN sed -i 's/#Port 22/Port 2220/g' /etc/ssh/sshd_config
RUN sed -i 's/#Banner none/Banner \/etc\/samurai_scripts\/banner.txt/g' /etc/ssh/sshd_config

# Expone el puerto a conexiones exteriores
EXPOSE 2220

# Se ejecutan comandos al iniciar el sistema

CMD ./entrypoint.sh
