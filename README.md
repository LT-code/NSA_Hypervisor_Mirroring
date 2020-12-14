# Hypervisor Proxmox cloud projet
Proxmox setting-up. 

## Sommaire

- [Description](#description)
- [Prérequis](#prérequis)
- [Installation (avec docker)](#installation-avec-docker)
- [Installation (sans docker)](#installation-sans-docker)
- [Auteurs](#auteurs)
- [Licence](#licence)

## Description

Cluster installation on 3 proxmox servers. </br>
It contains, a setting up of :</br>
  - a cluster with proxmox
  - a glusterfs syncronisation files
  - monitoring server (prometheus, grafana)
  - vpn bridge between all servers (tinc)
  - cloud-init template to deploy fastly centos7 vms
  - hot migration of vms
  - backup with ftp
  - mariadb server and 2 mariadb slaves
</br></br>
In the ansible, you won't find the ftp backup, the cloud-init, monitoring vm installation, and the mariadb servers.

## Requirments

 - [Python](https://nodejs.org/en/) needed to run ansible.
 - [Ansible](https://classic.yarnpkg.com/fr/docs/install/#windows-stable) for running the files.
 
## Run the script

For running it, you will simply need to run this command  :

```bash
sh ./run.sh
```
## Servers IP

# Hypervisor:
  * Hypervisor 1:
    - 51.159.59.228 (public)
    - 10.10.10.11 (private/vpn)

  * Hypervisor 2:
    -  51.159.59.241 (public)
    - 10.10.10.12 (private/vpn)

  * Hypervisor 3:
    - 51.159.52.148 (public)
    - 10.10.10.13 (private/vpn)

# VMS:
  * Monitoring:
    - 10.10.10.100
  * mariadb:
    - 10.10.10.111
  * mariadb-slave-1:
    - 10.10.10.112
  * mariadb-slave-2:
    - 10.10.10.113

# Monitoring
  * grafana : http://51.159.59.241:3000/

## Auteurs

* **Thomas Lopez** - <thomas.lopez@epitech.eu> - [LT-code](https://github.com/LT-code)
* **Antoine Girardin** - <antoine.girardin@epitech.eu>
* **David Schoffit** - <david.schoffit@epitech.eu> 

## Licence
[![License](https://img.shields.io/badge/License-Apache%202.0-green.svg)](https://opensource.org/licenses/Apache-2.0)

