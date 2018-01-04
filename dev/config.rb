# -*- mode: ruby -*-
# vi: set ft=ruby :

VM_CPU=4
VM_MEMORY="4096"

USER_NAME = 'dev'
GUEST_IP='172.11.11.11'

# This must be the host IP
DNS_IP='172.11.11.11'
DNS_ENTRIES = ['example1.com', 'example2.com']
DNS_ENTRIES.push('example3.com')
DNS_ENTRIES.push('example4.com')

# If enabled, folders and paths must exists
SYNCED_FOLDERS_ENABLED=false
SYNCED_FOLDERS_PATH="/path/to/the/synced/folder"
SYNCED_FOLDERS = ['/entry']

