# suseforma
generic framework inspired from sumaform https://github.com/moio/sumaform
Suseforma is a simplified generic sumaform version. (salt + terraform)


## Install prereq:

https://github.com/moio/sumaform/#installation

## Run the example:

```console
vi main.tf.example
mv main.tf.example main.tf
terraform get
terraform apply
```

## How to use suseforma:

Baiscally, we run diffrent salt-state defining grains, roles. 

On the top.sls file 
https://github.com/MalloZup/suseforma/blob/master/salt/top.sls

we can define which role will execute what.
If you need a new-role, create a dir in `suseforma/salt/` called as the new role you define in top.sls, and put init.sls and so on states, in this dir.

Finally modify the terraform.tf file with the new role


A vm has a diffrente role, so it will execute all role assigned to this role
control node doesn't need because of this:
https://github.com/MalloZup/suseforma/blob/master/main.tf.example#L28
https://github.com/MalloZup/suseforma/blob/master/modules/libvirt/control_node/main.tf#L8


Example franzappa role:

https://github.com/MalloZup/suseforma/blob/master/salt/frankzappa/init.sls
https://github.com/MalloZup/suseforma/tree/master/salt/frankzappa


Suseforma is basically terraform, libvirtd (https://github.com/dmacvicar/terraform-provider-libvirt) with salt.
This is for learning purpose.

The control-node machine, is a concept to orchestrate machines. Take this if you wish.
 In spacewalk-testsuite(https://github.com/SUSE/spacewalk-testsuite-base), we run cucumber code inside the control-node that orchestrate the multiples-machines.

For getting more in touch, take inspiration from sumaform.
