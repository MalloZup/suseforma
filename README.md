# suseforma
generic framework inspired from sumaform https://github.com/moio/sumaform


## How to use suseforma:

Suseforma is a modified copy of sumaform, and is only for a generic demo.

Suseforma is basically terraform, libvirtd (https://github.com/dmacvicar/terraform-provider-libvirt) with salt.

It's just a quick generic scheleton, to show people how to benift from this 2 tools in a generic way.


So we use terraform for setup network, machines, disks etc, and salt for provisioning the machine.

The control-node machine, can be used as concept to orchestrate machines. In spacewalk-testsuite(https://github.com/SUSE/spacewalk-testsuite-base),

we run cucumber code inside the control-node that orchestrate the multiples-machines.


You could also use susetest, for just simpy run multiple machines test in python. 
https://github.com/okirch/susetest



For getting more in touch, take inspiration from sumaform.
