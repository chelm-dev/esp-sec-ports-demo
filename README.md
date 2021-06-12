# esp-sec-ports-demo
Partial setup/ports of dropbear and freeradius to esp-idf
** in progress **

The goal was to add security components as git modules so that pulling in vulnerability patches are as simple as possible.
-Using cmake, each component adds relevent source files (skipping those that don't with well with esp-idf)
-parts that need to be esp-idf/ or modified to use with RTOS are copied to the root component directory and modified/implemented


Dropbear's integration with libtomcrypt was especially painful to get to work with esp-idf, I ended up with a external build of libtomcrypt to make it work
