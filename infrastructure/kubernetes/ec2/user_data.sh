#!/bin/bash
# ===== Ubuntu EC2 Ansible Init Script =====
set -eux

# Update the package list
apt update -y

# Install Python3 and pip (Ansible modules require Python)
apt install -y python3 python3-pip python3-venv python3-apt

# (Optional) Install Python symlink if some modules expect 'python'
if ! command -v python &>/dev/null; then
    update-alternatives --install /usr/bin/python python /usr/bin/python3 1
fi

# Install basic tools often used by Ansible roles
apt install -y \
  curl wget git unzip tar gnupg lsb-release \
  software-properties-common ca-certificates

# Create a non-root Ansible user (optional but recommended)
useradd -m -s /bin/bash ansible || true
echo "ansible ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/ansible
chmod 440 /etc/sudoers.d/ansible

# Create SSH directory for Ansible user
mkdir -p /home/ansible/.ssh
chmod 700 /home/ansible/.ssh
chown ansible:ansible /home/ansible/.ssh

# (Optional) Add your public key for passwordless login
# echo "ssh-rsa AAAA...." >> /home/ansible/.ssh/authorized_keys
# chmod 600 /home/ansible/.ssh/authorized_keys
# chown ansible:ansible /home/ansible/.ssh/authorized_keys

# Enable UFW firewall but allow SSH
ufw allow OpenSSH
ufw --force enable

echo "✅ Ubuntu EC2 is ready for Ansible"
