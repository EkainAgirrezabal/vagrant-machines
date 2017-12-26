# Vagrant machine: DEV
## Prerequisites
Vagrant-Landrush plugin is required:

    $ vagrant plugin install landrush
    
## Configuration
Configure parameters like user, host and guest IP's, etc., by editing:

    config.rb

If needed, add DNS entries:

    DNS_ENTRIES.push('example.com')

If needed, sync folders between host and guest:

    SYNCED_FOLDERS_PATH="/path/to/the/synced/folder"

    SYNCED_FOLDERS = ['/entry']

## Getting started
Bring up the machine:

    $ vagrant up

Default credentials for login:

    USER = dev,  PASSWORD = dev
