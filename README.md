- use build.sh to create the docker container
- use run.sh to run mount the docker container and play with the source.
- container allows you to compare traditional jvm with graal vm.
	-	currently PrimitivesAndObjects.java is set up to allocate many big Longs
	and primitive longs.  To see how the two VMs handle allocation.
