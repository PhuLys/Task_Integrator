@ echo off
Rem SSH to VM and Execute script hmi_base.sh above and print log inf
set /p user="Enter Username you want to login: "
set /p ip="Enter Host IP address you want to login: "
set /p hp="Enter Host Port you want to login: "
ssh -p %hp% %user%@%ip% "bash hmi_base.sh"

Rem Copy 1 file from Windows side to Linux side
set /p file="Enter filename you want to copy: "
set /p server_address="Enter server_address: "
set /p address_1="Enter address file in Windows side you want to copy: "
set /p address_2="Enter address folder in Linux side you want to paste: "
cd %address_1%
scp %file% %user%@%server_address%:~/%address_2%
