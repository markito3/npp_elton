Event Generation and Analysis for Neutral Pion Polarizability a la Smith

Original files come from:

* /work/halld2/home/elton/gen_2pi0_primakoff - submit jobs to farm
* /work/halld/home/elton/gen_2pi0_primakoff_signal/Z2pi0_trees - analysis streams
For Mark:

* do the build in /work/halld/home/marki/npp_builds
* run the jobs in /work/halld/home/marki/npp_run

From meeting on April 29, 2020:

* Critical files are that have changed are:
    * Z2pi0_trees/fit_2pi0_primakoff-File_100000.cfg
    * Z2pi0_trees/DSelector_Z2pi0_trees2.C
    * Z2pi0_trees/DSelector_Z2pi0_trees2.h
    * Z2pi0_trees/streamline2.csh
* Also gen_2pi0_primakoff/MC_config now uses random background, not tagger only
