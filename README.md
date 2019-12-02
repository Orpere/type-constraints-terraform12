# type-constraints-terraform12
This repo shows how to use variable map type on terraform 12 type constraints
# This repo shows how to use variable map type on terraform 11 type constraints

this repo is based on [documentation](https://www.terraform.io/docs/configuration/types.html)

- [x] Install [tfswitch](https://warrensbox.github.io/terraform-switcher/) and chose terraform 11
- [x] Install [git](https://gist.github.com/derhuerst/1b15ff4652a867391f03)
- [x] How to use this repo

## How to use this repo

- In a directory of your choice, clone the github repository :
  
```bash
    git clone git@github.com:orlando-pereira/type-constraints-terraform12.git

- Change into the directory :
  
```bash
    cd type-constraints-terraform12
```

- create a self certificates to test

```bash
cd certs
chmod +x self_cert.sh
./self_cert.sh
```

- take note from the details you add on

```bash
Country Name (2 letter code) []:nl
State or Province Name (full name) []:rotterdam
Locality Name (eg, city) []:rotterdam
Organization Name (eg, company) []:test
Organizational Unit Name (eg, section) []:it
Common Name (eg, fully qualified host name) []:test.com
Email Address []:
```

- update the details on main.tf

``` terraform
    common_name  = "vault"
    country      = "nl"
    city         = "rotterdam"
    organization = "test"
```

- change your terraform version

```bash
tfswitch
✔ 0.12.16 *recent
Switched terraform to version "0.12.16"
```

- test if it validate
  
```bash
terraform validate
```

- it should show the below

```bash
Success! The configuration is valid.
```
