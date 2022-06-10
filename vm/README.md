# Virtual Machine Management

`vm-run` command is able to create a vagrant VM from a template. It is
transitory by default so it works similarly to `docker run`

## Pre-requisites and installation

- vagrant
- libvirt, qemu, vagrant-libvirt (should work with virtualbox also)
- nfs
- ansible
- python-j2cli

- automate NFS exports (for Arch)

```
# /etc/sudoers.d/50-vagrant
# Vagrant
Cmnd_Alias VAGRANT_EXPORTS_CHOWN = /usr/bin/chown 0\:0 /tmp/*
Cmnd_Alias VAGRANT_EXPORTS_CHOWN_SBIN = /sbin/chown 0\:0 /tmp/*
Cmnd_Alias VAGRANT_EXPORTS_MV = /usr/bin/mv -f /tmp/* /etc/exports
Cmnd_Alias VAGRANT_EXPORTS_MV_SBIN = /sbin/mv -f /tmp/* /etc/exports
Cmnd_Alias VAGRANT_EXPORTS_NFS_SBIN = /usr/sbin/systemctl start nfs-server.service
Cmnd_Alias VAGRANT_EXPORT_FS = /usr/bin/exportfs -ar
%libvirt ALL=(root) NOPASSWD: VAGRANT_EXPORTS_CHOWN, VAGRANT_EXPORTS_MV, VAGRANT_EXPORTS_CHOWN_SBIN, VAGRANT_EXPORTS_MV_SBIN, VAGRANT_EXPORTS_NFS_SBIN, VAGRANT_EXPORT_FS
```

- setup firewall for NFS, allow vers=3 and udp in nfs.conf
- bind-mounts in shared/ dir are supported, e.g.:

```
# /etc/fstab
/home/tkrizek/git	/home/tkrizek/vm/shared/git	none	defaults,bind 0 0
```

## Usage

```
vm-run debian-11            # create and connect to temp VM and destroy it afterwards
vm-run fedora-35 pkg-f35    # create a persistent VM in machines/ dir
```
