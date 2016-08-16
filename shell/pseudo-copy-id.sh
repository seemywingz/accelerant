cat ~/.ssh/id_rsa.pub | ssh -F ssh.config production "cat >> ~/.ssh/authorized_keys"
