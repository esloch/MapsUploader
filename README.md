## UPDATE INCIDENCE MAPS

### This tool automates the sending of incidences maps to the repositories on the server.

#### Requirements:

Make sure you have your [ssh-key](https://www.ssh.com/academy/ssh/keygen#ssh-keys-and-public-key-authentication) on the target host and file system access privileges
*Install dependencies:*
``` 
$ sudo apt update && sudo apt install rsync gettext-base
``` 

#### How to configure?

Create the .env_maps file using the environment template file and set the variables
*Run the command:*
``` 
$ make envsubst
``` 

#### How to use?
*Synchronizing map images:*
``` 
$ make upload_maps
``` 

#### Directory structure:
*Directory structure and file name patterns must be maintained*
```
sync_maps
├── incidence_maps
│ ├── country
│ │ ├── incidence_Nacional_chikungunya.png
│ │ └── incidence_Nacional_dengue.png
│ state
└─└── incidence_{state_abbv}_{disease}.png

```
