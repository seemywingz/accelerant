RMS Deploy: AWS & Server Configuration
=============================

###Usage
####this playbook does not manage databases

  1. Check out this repository and `chmod 0600 keys/*`

  2. Ensure you have `vault/token` (have to ask someone for the file)

  3. Be on Network...

## URLS


## Deploy Commands

**Production**

  # AWS Setup

   `ansible-playbook aws.yml`

  # Serer Setup

   `ansible-playbook server.yml`



**SSH To Production** (must be inside this repo)

   `ssh -F ssh.config production`


####Known Issues:

####TODO:
