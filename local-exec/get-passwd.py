import paramiko
import sys

ssh = paramiko.SSHClient()
host = sys.argv[1]
account = "ec2-user"
pkey = './keys/jenkins-manager'
command ="sudo cat /var/lib/jenkins/secrets/initialAdminPassword"
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=account, key_filename=pkey)
stdin, stdout, stderr = ssh.exec_command(command)
output = stdout.readlines()
for line in output:
    print (line)
ssh.close()