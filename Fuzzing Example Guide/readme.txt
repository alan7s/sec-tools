# Exploit Title : Xitami Web Server
# Date		: 14/10/2022
# Exploit Author: https://github.com/alan7s
# Software Link	: https://mega.nz/file/b9ZgjbwB#u9E7m6OJc3YlE6bcyNqLjaVJFdBIeaU3AThtOiHTSC0
# Version	: 2.5b4
# Tested on	: Windows XP SP3 (Portuguese)

1_script.spk	-> Modelo de requisição de atualização obtido via Wireshark para usar no Spike
2_script.spk 	-> Identificando formato de entrada maliciosa variando campos (Crash em If-Modified-Since)
3_exploit.py	-> Script para enviar entrada maliciosa e confirmar disparo de erro

