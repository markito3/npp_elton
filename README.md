# Event Generation and Analysis for Neutral Pion Polarizability a la Smith

## Instructions

### 1) To get the programs

```
cd /home/username
git clone https://github.com/markito3/npp_elton
```

### 2) To setup the environment

```
setenv NPP /home/username/npp_elton
source $NPP/setup
```

### 3) To configure the software

```
mkdir -p /work/halld/username/npp_work
cd /work/halld/username/npp_work
cp $NPP/standard.nppcfg my.nppcfg
```

Edit my.nppcfg to indicate your preferences. In particular, npp_elton_dir needs to point to the directory defined as $NPP above.

### 4) Generate the Monte Carlo

```
cd /work/halld/username/npp_work
make -f $NPP/Makefile_mc CONFIG=my.nppcfg
```

Output goes to the directory named in the nppcfg file.

### 5) Analyze the Monte Carlo

```
make -f $NPP/Makefile_analysis CONFIG=my.nppcfg
```

Output goes to the current working directory.

## Notes

### Original files come from:

* /work/halld2/home/elton/gen_2pi0_primakoff - submit jobs to farm
* /work/halld/home/elton/gen_2pi0_primakoff_signal/Z2pi0_trees - analysis streams

### From meeting on April 29, 2020:

* Critical files are that have changed are:
    * Z2pi0_trees/fit_2pi0_primakoff-File_100000.cfg
    * Z2pi0_trees/DSelector_Z2pi0_trees2.C
    * Z2pi0_trees/DSelector_Z2pi0_trees2.h
    * Z2pi0_trees/streamline2.csh
* Also gen_2pi0_primakoff/MC_config now uses random background, not tagger only
