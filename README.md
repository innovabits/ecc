
## Overview
InnovabitsECC is a Web App to Provide Caller ID Details for External Calls or Block numbers using the Cisco Unified Routing Rules Interface [(CURRI)](https://developer.cisco.com/site/curri/develop-and-test/documentation/latest-version/) on CUCM.

Integrated with Cisco Unified Communications Manager (CallManager) it retrieves the caller name from  Database and shows it on your Cisco IP phone or Cisco Jabber during the incoming call and optionally can block unwanted numbers (Black List).

## Requerimients 
This procedure requires [docker](https://docs.docker.com/engine/install/) and [docker-compose](https://docs.docker.com/compose/install/) installed on the target system.



### How to run
Rename .env.example file to .env and start docker-compose, default values should work:

```bash
docker_admin> mv .env.example .env
docker_admin> docker-compose up -d
```

### Access & Usage
 * http://0.0.0.0:5032 (admin/admin)
 * http://0.0.0.0/5030  (ECC Web Service)

You should now be able to access your ECC Web App on port 5032 and configure an ECC profile on CUCM to route requests to port 5030.

## CUCM Configurartion

### CUCM Profile
To enable External Call Control Feature on CUCM, add a new External Call Control Profile (Call Rounting -> External Call Control Profile):

 ![Alt text](img/cucm_ecc.png?raw=true "CUCM ECC Profile")

> :warning: **NOTICE:**

> **The Primary Web Service and (optional) Seconday Web Service must be configured in the following format: http://{ip-address}:{port}/{directory} **
 
 ### CUCM Route Pattern or Directory Number
 Then, you need to configure a Route Pattern or Directory Number with the ECC profile:

 ![Alt text](img/cucm_dn.png?raw=true "CUCM Directory Number")


## Add contacts in ECC Web
Login in ECC Web http://0.0.0.0:5032 (User:admin / password: admin) and add contacts for External Display:
![Alt text](img/ecc_phone.png?raw=true "Add Phone")

## Troubleshooting 
- Unified CM periodically sends Keep-Alive messages to the web service. The message is a HTTP HEAD request and the ECC Web Service must respond and log response to this and CURRI requests. You can see docker logs messages:

```bash
docker_admin> docker-compose logs
```

  




