@echo off
DnsCmd /ZoneAdd %1 /Primary
DnsCmd /RecordAdd %1 @ A %2
DnsCmd /RecordAdd %1 www A %2
DnsCmd /RecordAdd %1 ftp A %2
dnscmd /recordadd %1 mail A %2
dnscmd /recordadd %1 @ MX 10 %2
dnscmd /RecordAdd %1 @ NS ns1.%1
dnscmd /RecordAdd %1 @ NS ns2.%1
if not exist "C:\inetpub\www\%1\http" mkdir C:\inetpub\www\%1\http
if not exist "C:\db\%1\" mkdir C:\db\%1
cd c:\Windows\System32\inetsrv
appcmd add site /name:%1 /physicalPath:C:\inetpub\www\%1\http /bindings:http/*:80:%1
appcmd add apppool /name:%1
appcmd set site /site.name:%1 /[path='/'].applicationPool:%1
cd \
