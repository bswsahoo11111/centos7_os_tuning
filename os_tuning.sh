echo "team@123" | passwd --stdin root
sed -i s/'PermitRootLogin no'/'PermitRootLogin yes'/g /etc/ssh/sshd_config;
sed -i s/'PasswordAuthentication no'/'PasswordAuthentication yes'/g /etc/ssh/sshd_config;
sed -i s/'ChallengeResponseAuthentication no'/'ChallengeResponseAuthentication yes'/g /etc/ssh/sshd_config;
systemctl restart sshd
sed -i s/SELINUX=enforcing/SELINUX=disabled/g /etc/selinux/config
setenforce 0
getenforce
systemctl disable firewalld; systemctl stop firewalld; systemctl status firewalld
yum install wget git ansible -y
yum update -y

