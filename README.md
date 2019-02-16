## Debug Container

This is used if you need to have a debug conatiner running in a cluster during :fire: or on a :sunny: day.

There are several ways we can connect to the network interface to do things...

`bridged`  
`host`  
`none`  

there is also the `--privileged` mode if you'd like to
capture traffic using `tshark`

please look at the [Makefile](Makefile) for examples
