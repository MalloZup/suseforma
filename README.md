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

Suseforma is basically terraform, libvirtd (https://github.com/dmacvicar/terraform-provider-libvirt) with salt.
This is for learning purpose.

The control-node machine, is a concept to orchestrate machines. Take this if you wish.
 In spacewalk-testsuite(https://github.com/SUSE/spacewalk-testsuite-base), we run cucumber code inside the control-node that orchestrate the multiples-machines.

For getting more in touch, take inspiration from sumaform.
