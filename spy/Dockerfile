FROM debian:latest
ENV SHELL=/bin/bash
ENV HOSTNAME=spy-01

MAINTAINER Daniel Mateos <daniel.mateos23@educa.madrid.org>
WORKDIR /etc/spy_scripts

# Se actualizan los paquetes. No tocar
RUN apt update && apt upgrade -y

#Se instalan los servicios necesarios
RUN apt install -y openssh-server \ 
		build-essential \
		vim-common ent \
		file exiftool \ 
		iproute2 \ 
		steghide outguess \
		john

#Se copia copia contraseñas y scripts
COPY spy_pass/* /etc/spy_pass/
COPY spy_html .
COPY banner.txt . 
COPY usuarios.sh .

#Cambio de permisos y ejecucion de script usuarios.sh
RUN chmod +x usuarios.sh && \
	bash usuarios.sh

# SSH
RUN sed -i 's/#Port 22/Port 2221/g' /etc/ssh/sshd_config
RUN sed -i 's/#Banner none/Banner \/etc\/spy_scripts\/banner.txt/g' /etc/ssh/sshd_config

# Se ejecutan comandos
CMD service ssh start && \
	service ssh restart && \
	 tail -f /dev/null 
