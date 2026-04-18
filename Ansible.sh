#!/bin/bash
#Author: Balu_DevOps_Team
#Date: 0-0-26
#Version: V1
#
#Ansible playbook for configuration servers
#############################################################################
#
---
- name: Install Ngix on manage nodes
  hosts: web servers
  become: yes

  task:
  -name: update apt_chache
    apt:
    update apt_chache: yes

  -name: Install Nginx
    apt:
    name: Ngnix
    state: present

  -name: start nginx
###########################################
#
#
#If you have multiple tasks in a single playbook


---
- name: Install packages
  host: webservers
  become: yes
  connection: SSH


  task:
    - name: Install ngnix
       apt:
       name: ngnix
       state: present

     - name: Install python
        apt:
        name: python
	state: present

######################################################
#
#

# Another way write to  playbook for multiple tasks


---
- name: Install multiple packages
  host: webservers
  become: yes
  connection: SSH


  task:

   - name: Install nginx, python3, git
      apt:
      name:
        - ngnix
	- python3
	- git
       state: present
       update_cache: yes

