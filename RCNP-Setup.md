## Robin Cloud Native Platform(RCNP) setup

### Configuration
- **Build** - http://builds.robinsystems.com:8080/view/5.3.x/job/Robin_5.3.x_Binary/2007/artifact/
- **Bundle** - KVMCentOS 7-gold
- **CPU Cores** - 3
- **Memory** - 16 GB
- **HDD** - 120 GB
- **SSD** - 60 GB

### Notes
- **Non HA RCNP deployment**\
Robin's VM-as-a-Service allowed me to create 2 VMs with 3 CPU cores each. And as HA deployment requires 3 master nodes, I followed a Non-HA deployment procedure.

- **Checking kernel version**\
In the documentation, to inspect the kernel version, it instructs to `run: $ uname -i`, but should be:

```bash
uname -r
```

- **Kernel update**\
The installation fails as it requires a updated kernel version on **KVMCentOS 7-gold** bundle.

- **Re-configuring grub after installing a updated kernel**\
After installing new kernel through `$ yum install kernel`, you need to re-configure the grub to load new version of kernel, following are the commands to do this:

```bash
# list installed kernels
awk -F\' '$1=="menuentry " {print i++ " : " $2}' /etc/grub2.cfg

# set default kernel which needs to be loaded
grub2-set-default 0

# generate grub2 config and reboot
grub2-mkconfig -o /boot/grub2/grub.cfg
reboot
```



