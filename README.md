# suseforma
generic framework inspired from sumaform https://github.com/moio/sumaform
Suseforma is a simplified generic sumaform version. (salt + terraform (libvirt-plugin), and should help you to learn create a template for your project

https://github.com/dmacvicar/terraform-provider-libvirt

## Install prereq:

https://github.com/moio/sumaform/#installation

## Run the example:

```console
vi main.tf.example
cp main.tf.example main.tf
terraform get
terraform apply
```

## How to use suseforma:

Baiscally, terraform create disks and networks etc (main.tf file)
Salt run after matching  the roles (grains), and execute the states assigned.


#### roles
On the top.sls file 
https://github.com/MalloZup/suseforma/blob/master/salt/top.sls

**creating new role**
Example:
*frankzappa:*
* 1 we define the role on main
https://github.com/MalloZup/suseforma/blob/master/main.tf.example#L28
* 2 we create role defintion on grain
 https://github.com/MalloZup/suseforma/blob/master/salt/top.sls
* 3 we create the dir on salt and put init.sls with some operation salt.
  
The control-node, has the grain definiton **"hidden"** in terraform
https://github.com/MalloZup/suseforma/blob/master/modules/libvirt/control_node/main.tf#L8
_____

Suseforma is basically terraform, libvirtd (https://github.com/dmacvicar/terraform-provider-libvirt) with salt.
This is for learning purpose.

The control-node machine, is a concept to orchestrate machinee, in complex scenario. Take this if you wish.
 In spacewalk-testsuite(https://github.com/SUSE/spacewalk-testsuite-base), we run cucumber code inside the control-node that orchestrate the multiples-machines.

For getting more in touch, take inspiration from sumaform.
