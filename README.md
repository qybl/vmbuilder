# vmbuilder
simple vm builder based on ubuntu cloudimages, cloud-init, mo and kvm

**BEWARE!**  
this script downloads https://github.com/tests-always-included/mo to your computer and runs it
mo is a pure bash implementation of the mustache template system

## prerequisites
### dependencies
`# brctl addbr br-vmbuilder`  
`# ip link set br-vmbuilder up`  
`# ip address add 192.0.2.1/24 dev br-vmbuilder`  
`# apt install genisoimage qemu-kvm`  
`$ wget https://cloud-images.ubuntu.com/releases/bionic/release/ubuntu-18.04-server-cloudimg-amd64.img`

## usage
the configuration is pure cloud-init, so you'll have three files `meta-data.mo user-data.mo network-config.mo`, the `.mo` extension is for the mustache template system
the example user is named vmbuilder, password is vmbuilder
```
$ vmbuilder -h
options are (all but h needed):                                                                                                                                                               
    h) prints this message
    N) name: tmp (if the name is >tmp< vmbuilder will remove the vm image between runs)
    a) ip address: a.b.c.d
    g) gateway: a.b.c.e
    n) netmask: cidr form eg. 24
    
$ vmbuilder -N tmp -a 192.0.2.2 -g 192.0.2.1 -n 24
```
