# salt-vagrant
A Vagrant lab environment for Salt

## Requirements
- VirtualBox
- Vagrant
- git

## Installation
Clone repository
```bash
$ git clone https://github.com/jagardaniel/lekstuga.git
$ cd lekstuga/salt-vagrant
```

Start the Vagrant environment
```bash
$ vagrant up
```

SSH into the salt master VM. It is primary so you don't have to specify the name.
```bash
$ vagrant ssh
```

Use `salt-key` to accept the Salt minion keys.
```bash
vagrant@saltmaster:~$ sudo salt-key
Accepted Keys:
Denied Keys:
Unaccepted Keys:
minion01
minion02
Rejected Keys:

vagrant@saltmaster:~$ sudo salt-key -A
The following keys are going to be accepted:
Unaccepted Keys:
minion01
minion02
Proceed? [n/Y] y
Key for minion minion01 accepted.
Key for minion minion02 accepted.

vagrant@saltmaster:~$ sudo salt-key
Accepted Keys:
minion01
minion02
Denied Keys:
Unaccepted Keys:
Rejected Keys:
```

Verify setup
```bash
vagrant@saltmaster:~$ sudo salt '*' test.version
minion02:
    3002.6
minion01:
    3002.6
```

## Usage
...

Target all minions and run states based on the top file.

```bash
vagrant@saltmaster:~$ sudo salt '*' state.apply
```

Run `doas` state on minion01
```bash
vagrant@saltmaster:~$ sudo salt 'minion01' state.apply doas
```
