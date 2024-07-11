## Samurai 0
### Objetivo del nivel
El objetivo de este nivel es que te conectes al juego usando SSH. El host al que necesitas conectarte es cyberflag.es, en el puerto 2220. El nombre de usuario es samurai0 y la contraseña es samurai0. Una vez conectado, ve a la página del Nivel 1 para averiguar cómo superar el Nivel 1.
Comandos que puedes necesitar para resolver este nivel
ssh
## Samurai 0 Samurai 1
### Objetivo del nivel
La contraseña del siguiente nivel esta almacenada en un fichero humanamente leíble en el directorio findit
Comandos que puedes necesitar para resolver este nivel
ls, cd, car file, du, find
## Samurai 1  Samurai 2
### Objetivo del nivel
La contraseña del siguiente nivel está almacenada en algún lugar dentro del directorio findit y tiene las siguientes propiedades. 
* Es humanamente leíble.
* Pesa 1035 bytes
* No es un ejecutable
Comando que puedes necesitar para resolver este nivel
ls,cd, cat, file, du, find

## Samurai 2  Samurai 3
### Objetivo del nivel
La contraseña para el siguiente nivel está almacenada en el archivo data.txt, donde todas las letras minúsculas (a-z) y mayúsculas (A-Z) han sido rotadas 13 posiciones
Comandos que puedes necesitar para resolver este nivel
grep, sort, uniq, strings, base64, tr, tar, gzip, bzip2, xxd
## Samurai 3  Samurai 4
### Objetivo del nivel
La contraseña para el siguiente nivel se almacena en el archivo data.txt, que es un hexdump de un archivo que ha sido comprimido repetidamente. Para este nivel puede ser útil crear un directorio bajo /tmp en el que puedas trabajar. 
Comandos que puedes necesitar para resolver este nivel
grep, sort, uniq, strings, base64, tr, tar, gzip, bzip2, xxd, mkdir, cp, mv, file, mktemp -d
## Samurai 4  Samurai 5
### Objetivo del nivel
La contraseña para el siguiente nivel se puede recuperar enviando la contraseña del nivel actual al puerto 30000 en localhost
Comandos que puedes necesitar para resolver este nivel
ssh, telnet, nc, openssl s_client, nmap
## Samurai 5  Samurai 6
### Objetivo del nivel 
La contraseña para el siguiente nivel se puede recuperar enviando la contraseña del nivel actual al puerto 30002 en localhost utilizando encriptación SSL.
Nota útil: ¿Obtiene «HEARTBEATING» y «Read R BLOCK»? Utilice -ign_eof y lea la sección «COMANDOS CONECTADOS» en la página de manual. Junto a 'R' y 'Q', el comando 'B' también funciona en esta versión de ese comando...
Comando que puedes necesitar para resolver este nivel
ssh, telnet, nc, openssl s_client, nmap
## Samurai 6  Samurai 7
### Objetivo del siguiente nivel
Hay 2 archivos en el home del usuario: passwords.old y passwords.new. La contraseña para el siguiente nivel está en passwords.new y es la única línea que ha cambiado entre passwords.old y passwords.new.
NOTA: si has resuelto este nivel y ves “¡Hasta luego, samurai!” al intentar entrar en samurai7, esto está relacionado con el siguiente nivel.
Comandos que puedes necesitar para resolver este nivel
cat, grep, ls, diff
## Samurai 7  Samurai 8
### Objetivo del siguiente nivel
La contraseña para el siguiente nivel se almacena en un archivo readme en el home del usuario. Desafortunadamente, alguien ha modificado “.bashrc” para cerrar la sesión cuando te conectas con SSH.
Comandos que puedes necesitar
ssh, ls, cat
## Samurai 8  Samurai 9
No hay información para este nivel, intencionadamente.


## SPY1
### Objetivo del nivel
El objetivo de este nivel es que te conectes al juego usando SSH. El host al que necesitas conectarte es cyberflag.es, en el puerto 2220. El nombre de usuario es spy0 y la contraseña es spy0. Una vez conectado, ve a la página del Nivel 1 para averiguar cómo superar el Nivel 1.
Comandos que puedes necesitar para resolver este nivel
ssh

## SPY1 SPY2
### Objetivo del nivel. 
La contraseña del siguiente nivel se almacena anexada en la imagen que está en el home del usuario. 
Nota: Si necesitas una passphrase, puedes usar la contraseña con la que accediste a este nivel. 
Comando que puedes necesitar para resolver este nivel
steghide, outguess, strings, file, mktemp -d
## SPY2  SPY3
La contraseña del siguiente nivel se encuentra adherida a los metadatos de la imagen. 
Comandos que puedes necesitar para resolver este nivel
file, cat, exiftool, strings
