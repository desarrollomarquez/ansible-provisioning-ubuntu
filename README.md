# ansible-provisioning-ubuntu
Provisioning of servers or machines using ansible for ubuntu

## Prerequisites

You must execute the first step, this is to configure Ansible on the machine or instance:

sh setup.sh 

## Roles

### Tools: curl, vim, wget

To install curl, vim, wget and gnome-tweaks :

```
ansible-playbook -v playbooks/tools.yml -K
```

### AWSCli

To install awscli :

```
ansible-playbook -v playbooks/awscli.yml -K
```


### Docker

To install [Docker](https://github.com/moby/moby) :

```
ansible-playbook -v playbooks/docker.yml -K -u $USER
```

### Docker Compose

To install [Docker Compose](https://github.com/docker/compose) :

```
ansible-playbook -v playbooks/dockercompose.yml -K
```