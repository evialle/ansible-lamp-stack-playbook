# Ansible Server for small business with Wordpress, VTiger, Asterisk, Prestashop, LDAP... on Digital Ocean


## Overview

This ansible script install everything needed for a small business company on one server (old school, but cheapest way)...

 * The CMS tool (Wordpress) will be accessible at www.{{customer_dns}}
 * The shop tool (Prestashop) will be accessible at shop.{{customer_dns}}
 * The CRM tool (Vtiger) will be accessibl at crm.{{customer_dns}} 

This playbook is for educational purpose. This playbook helped me to learn and understand the capacities of ansible.

## Pre-requisites

* ansible 2.4
* Digital Ocean API Key

## Run

1. Create the file customer.yml

```
#Domain of the droplet to create
customer_dns: mydomain.com
customer_admin_firstname: Eric
customer_admin_lastname: Cire
customer_admin_email: eric@mydomain.com
```

2. Create the file keys.yml

```
#Digital Ocean API Key
do_token: 

#Root password of mysql instance
mysql_root_password:
```

3. Launch ansible
It will create a new Droplet on Digital Ocean
```
ansible-playbook site.yml
```

4. Destroy the Droplet on Digital Ocean
```
ansible-playbook site.yml
```
