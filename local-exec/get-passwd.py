import paramiko
import sys

ssh = paramiko.SSHClient()
#for arg in range(1, len(sys.argv)):
host = sys.argv[1]
account = "ec2-user"
pkey = './keys/jenkins-manager'
command ="sudo cat /var/lib/jenkins/secrets/initialAdminPassword"
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, username=account,
            key_filename=pkey)
# Example command:
stdin, stdout, stderr = ssh.exec_command(command)
output = stdout.readlines()
for line in output:
    print (line)
# Cleanup
ssh.close()