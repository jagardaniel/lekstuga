# ansible-vagrant
A Vagrant lab environment for Ansible.

## Overview
A Vagrant lab environment to play around with Ansible. Vagrant helps us set up a development environment with virtual machines that we can quicky install and destroy. The Vagrantfile defines a "control" node where Ansible is installed and run from. The local `ansible/` directory is synced to this VM so we can edit playbooks on our local machine. It also defines a number of "lab" VMs that will be our inventory hosts for Ansible.

I try to follow Ansibles best practice and the applications own documentation but the roles in this repository are not supposed to cover every configuration option available or to be secure. This is mostly to familiarize myself with Ansible again and try out different applications/configurations.

## Requirements
- VirtualBox
- Vagrant
- git

## Installation
Clone repository
```bash
$ git clone https://github.com/jagardaniel/lekstuga.git
$ cd lekstuga/ansible-vagrant
```

Start the Vagrant environment
```bash
$ vagrant up
```

SSH into the Ansible VM. It is primary so you don't have to specify the name.
```bash
$ vagrant ssh
```

The `/home/vagrant/ansible` directory is synced with our local `ansible/` directory so this is where we want to be when we run Ansible commands. Use the ping module to verify that you can reach the VMs.

```bash
[vagrant@ansible ~]$ cd ansible/

[vagrant@ansible ansible]$ ansible -m ansible.builtin.ping all
lab01 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3"
    },
    "changed": false,
    "ping": "pong"
}
lab02 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3"
    },
    "changed": false,
    "ping": "pong"
}
```

## Run playbooks
..
