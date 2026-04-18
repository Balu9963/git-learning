#!/bin/bash
#Author: Balu_DevOps_Team
#Date: 0-0-26
#Version: V1
#Ansible roles
#################################################


---
- name: Install Packages on webservers
  hosts:webservers
  become: yes
  connection: SSH

  - roles:
      - nginx
      - python3
      - git


