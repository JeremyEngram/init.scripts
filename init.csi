#!/bin/bash

COREVM="https://csilinux.com/download/CSI_Linux_2023.2_VirtualBox.7z"; wget $COREVM && 7za e CSI*.7z; mv CSI* Documents; ls ~/Documents/CSI*

# Define variables for the VM name, OS type, memory, and disk size
VM_NAME="CSI FORENSICS VM"
OS_TYPE="Linux26_64"
MEMORY_SIZE="1024" # in MB
DISK_SIZE="50000" # in MB

# Create the virtual machine
VBoxManage createvm --name "$VM_NAME" --ostype "$OS_TYPE" --register

# Configure the virtual machine settings
VBoxManage modifyvm "$VM_NAME" --memory "$MEMORY_SIZE"
VBoxManage createhd --filename "$VM_NAME.vdi" --size "$DISK_SIZE"
VBoxManage storagectl "$VM_NAME" --name "SATA Controller" --add sata --controller IntelAHCI
VBoxManage storageattach "$VM_NAME" --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium "$VM_NAME.vdi"
VBoxManage storagectl "$VM_NAME" --name "IDE Controller" --add ide
VBoxManage storageattach "$VM_NAME" --storagectl "IDE Controller" --port 1 --device 0 --type dvddrive --medium emptydrive

# Attach an ISO image to the virtual CD/DVD drive
VBoxManage storageattach "$VM_NAME" --storagectl "IDE Controller" --port 1 --device 0 --type dvddrive --medium "~/Documents//CSI*.iso"

# Start the virtual machine
VBoxManage startvm "$VM_NAME" --type headless

# Wait for the VM to boot and get its IP address
echo "Waiting for the VM to boot..."
sleep 30
VM_IP=$(VBoxManage guestproperty get "$VM_NAME" "/VirtualBox/GuestInfo/Net/0/V4/IP" | awk '{print $2}')

echo "VM is running with IP address: $VM_IP"
