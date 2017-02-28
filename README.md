# linux-kms-server
Linux kms server.

## Run

- With Docker:
```
$ docker run -it -d -p 1688:1688 kebe/vlmcsd
```

- With linux:
```
$ make
$ ./vlmcsd
```

## Ciente usage:

**Note: run `cmd` with administrator.**

- Windows:
```powershell
slmgr /upk
slmgr /ipk XXXXX-XXXXX-XXXXX-XXXXX-XXXXX
slmgr /skms YOUR_IP_OR_HOSTNAME
slmgr /ato
```

- Office:
```powershell
CD \Program Files\Microsoft Office\Office16 OR CD \Program Files (x86)\Microsoft Office\Office16
cscript ospp.vbs /sethst:YOUR_IP_OR_HOSTNAME
cscript ospp.vbs /inpkey:xxxxx-xxxxx-xxxxx-xxxxx-xxxxx
cscript ospp.vbs /act
cscript ospp.vbs /dstatusall
```


- Source Code:
You can download source code on [https://forums.mydigitallife.info/threads/50234-Emulated-KMS-Servers-on-non-Windows-platforms](https://forums.mydigitallife.info/threads/50234-Emulated-KMS-Servers-on-non-Windows-platforms)

- Key:
You can find key on [https://technet.microsoft.com/en-us/library/jj612867.aspx](https://technet.microsoft.com/en-us/library/jj612867.aspx)
