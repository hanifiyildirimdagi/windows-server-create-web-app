# windows-server-create-web-app
>Shell script for hosting web applications on IIS on Windows servers.
## Using
The first parameter you send is the domain name you want to create.
Göndereceğiniz ikinci parametre ise, sunucunuzun public IP adresidir. 
```
create-web-app exampledomainname.com 66.102.14.0
create-web-app [domain-name] [public-ip-address]
```

## Transactions
- Creting DNS Zone
- Add "A" Record
- Add "A" Record for www
- Add Ftp, Mail, Mx and NS records
- Creates your domain's directory inside the IIS hosting directory. Creates your domain's directory for your database files, inside the db directory on drive C.
- Finally pool, app created on IIS and bonded.

## Results
>Physical path to your application: C:\inetpub\www\[domain-name]\http
>Database physical path of your application: C:\db\[domain-name]
