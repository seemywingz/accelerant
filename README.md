AWS & Server Configuration Boilerplate
=============================

### Usage
this playbook does not manage databases

  1. Check out this repository and `chmod 0600 keys/*`

  2. Ensure you have `vault/token` (have to ask someone for the file)

  3. Be on Network...

## Setup

  1. Clone repo

  `git clone git@bitbucket.org:kevinjayne/accelerant.git`

  2. Change the configurations 'group_vars/aws_vars' to suit the needs of the project

  3. Generate deploy keys in the keys directory

  `cd keys; ssh-keygen`

  4. Add AWS IAM credentials to 'vault/encrypted_vars' and create unique encryption token and save it as 'vault/token' and encrypt the file using ansible vault

  `ansible-vault encrypt vault/encrypted_vars`



# Deploy Commands

## *Production*

  ### AWS

   `ansible-playbook aws.yml`

  ### Server

   `ansible-playbook server.yml`

**SSH To Production** (must be inside this repo)  

   `ssh -F ssh.config production`


####Known Issues:

####TODO:
