#ident  "@(#).cshrc     ver 1.0     Aug 20, 1996"

#####
# Source the site-wide syscshrc file.
# The syscshrc file defines some needed aliases (setup amd unsetup)
# and environment variables (PATH and MANPATH).  This line
# should not be deleted.  You do, however, have a choice of
# syscshrc files.  Uncomment the one that you prefer.
#####
source /site/env/syscshrc       # Searches /usr/local/bin first.
#source /site/env/syscshrc.alt   # Searches /usr/local/bin last.

# Don't redirect output to an existing file.
set noclobber
set autolist

# Set the file creation mode mask (default permissions for newly created files).
umask 022

setenv DYLD_LIBRARY_PATH  "."
setenv LD_LIBRARY_PATH  "."
# General
setenv PATH .:${PATH}:${HOME}/bin:${HOME}/usr/bin:/usr/local/bin
if ( ! $?MANPATH ) then
	setenv MANPATH /usr/share/man:/usr/local/man
else
	setenv MANPATH ${MANPATH}:/usr/share/man:/usr/local/man
endif

setenv OSNAME `uname`-`uname -p`
alias diskquota 'du -sk * | sort -n'
alias emacs 'emacs \!* > & /dev/null &'
alias evince 'evince \!* > & /dev/null &'
alias exitwindow 'disown -a && exit'     # leave programs running after exiting terminal window
setenv EDITOR emacs
set prompt="%m:%c>"


# ifarm1102
# setenv BMS_OSNAME Linux_CentOS6-x86_64-gcc4.4.6

# VNC forwarding
setenv VNC1 '-L 5901:localhost:5901'
# setenv VNC1p '-L 5901:localhost:31415'
# setenv VNC2 '-L 5902:localhost:5902'
# setenv VNC2p '-L 5902:localhost:31416'
# setenv VNC3 '-L 5903:localhost:5903'
# setenv VNC4 '-L 5904:localhost:5904'
# setenv VNC5 '-L 5905:localhost:5905'
# setenv VNC6 '-L 5906:localhost:5906'

# CERNLIB
# setenv CERN /group/halld/Software/ExternalPackages/cernlib/Linux_CentOS6-x86_64-gcc4.4.6
# setenv CERN_LEVEL 2005
# setenv CERN_ROOT /usr/lib/cernlib/2005
# setenv PATH ${PATH}:${CERN_ROOT}/bin
# setenv DYLD_LIBRARY_PATH ${DYLD_LIBRARY_PATH}:${CERN_ROOT}/lib

# ROOT
# setenv ROOTSYS /group/halld/Software/ExternalPackages/ROOT/v5.34.01/root_Linux_CentOS6-x86_64-gcc4.4.6
# setenv ROOTSYS /apps/root/PRO/root
# setenv CERN_ROOT ${ROOTSYS}
# setenv PATH ${PATH}:${ROOTSYS}/bin
# setenv DYLD_LIBRARY_PATH ${ROOTSYS}/lib:${DYLD_LIBRARY_PATH}
# setenv DYLD_LIBRARY_PATH ${DYLD_LIBRARY_PATH}:${ROOTSYS}/lib


# source Hall D sim-recon environment
# setenv PATH .:${PATH}
# setenv CCDB_CONNECTION sqlite:////w/halld-scifs17exp/halld2/home/elton/python/ccdb_JPsiTest.sqlite 
# setenv CCDB_CONNECTION sqlite:////w/halld-scifs17exp/halld2/home/elton/python/ccdb_2018-07-24.sqlite 
# setenv CCDB_CONNECTION sqlite:////w/halld-scifs17exp/halld2/home/elton/python/ccdb_2018-07-10.sqlite 
# setenv CCDB_CONNECTION sqlite:////u/group/halld/Software/calib/ccdb_sqlite/ccdb_2017-12-12.sqlite 
# setenv CCDB_CONNECTION sqlite:////u/group/halld/Software/calib/ccdb_sqlite/ccdb_2018-11-19.sqlite 
# setenv CCDB_CONNECTION sqlite:////u/group/halld/Software/calib/ccdb_sqlite/ccdb_2019-10-07.sqlite  
# setenv CCDB_CONNECTION sqlite:////u/group/halld/Software/calib/ccdb_sqlite/ccdb_2019-11-07.sqlite 
# setenv CCDB_CONNECTION sqlite:////u/home/elton/halld/jobsub/ccdb_2019-11-07.sqlite   
setenv CCDB_CONNECTION sqlite:////u/group/halld/Software/calib/ccdb_sqlite/ccdb_2020-03-07.sqlite
# setenv CCDB_CONNECTION mysql://ccdb_user@hallddb.jlab.org/ccdb
source /work/halld2/home/elton/git/setup_gluex.csh
alias gxenv "source $BUILD_SCRIPTS/gluex_env_clean.csh; setenv BUILD_SCRIPTS $BUILD_SCRIPTS; source $BUILD_SCRIPTS/gluex_env_jlab.csh \!*"


# AmpTools and CLHEP
# setenv CLHEP_INCLUDE_DIR 
# setenv CLHEP_LIB_DIR 
# Original SourceForge source
# setenv AMPTOOLS /work/halld2/home/elton/amptools/AmpTools/AmpTools
# setenv AMPPLOTTER /work/halld2/home/elton/amptools/AmpTools/AmpPlotter
# setenv DALITZ /work/halld2/home/elton/amptools/AmpTools/Tutorials/Dalitz
# New git version source
setenv AMPTOOLS /work/halld2/home/elton/git/AmpTools/AmpTools
setenv AMPPLOTTER /work/halld2/home/elton/git/AmpTools/AmpPlotter
setenv DALITZ /work/halld2/home/elton/git/AmpTools/Tutorials/Dalitz

# Add path to gluex_root_analysis
setenv ROOT_ANALYSIS_HOME /work/halld2/home/elton/git/gluex_root_analysis
# setenv PATH ${PATH}:${ROOT_ANALYSIS_HOME}/Linux_CentOS6-x86_64-gcc4.9.2/bin/
# setenv LD_LIBRARY_PATH ${LD_LIBRARY_PATH}:${ROOT_ANALYSIS_HOME}/Linux_CentOS6-x86_64-gcc4.9.2/lib
# setenv PATH ${PATH}:${ROOT_ANALYSIS_HOME}/Linux_CentOS7-x86_64-gcc4.8.5/bin
# setenv LD_LIBRARY_PATH ${LD_LIBRARY_PATH}:${ROOT_ANALYSIS_HOME}/Linux_CentOS7-x86_64-gcc4.8.5/lib
setenv PATH ${PATH}:${ROOT_ANALYSIS_HOME}/${BMS_OSNAME}/bin
setenv LD_LIBRARY_PATH ${LD_LIBRARY_PATH}:${ROOT_ANALYSIS_HOME}/${BMS_OSNAME}/lib

# setenv MCWRAPPER_CENTRAL /work/halld2/home/elton/git/gluex_MCwrapper
setenv PATH ${PATH}:${MCWRAPPER_CENTRAL}
setenv JANA_CALIB_CONTEXT "variation=default"
# setenv JANA_CALIB_CONTEXT "variation=default calibtime=2018-10-20"   // pick out a specific time for constants
setenv JANA_CALIB_URL ${CCDB_CONNECTION}
source ~/MC_environment.csh   # comment if no longer using MC
# setenv JANA_GEOMETRY_URL xmlfile:////work/halld2/home/elton/git/hdds/main_HDDS.xml
setenv JANA_GEOMETRY_URL  ccdb:///GEOMETRY/cpp_HDDS.xml

# Python 2.7 installation
alias python '/apps/anaconda/PRO/bin/python2'
# setenv PATH /apps/anaconda/PRO/bin:$PATH
# setenv LD_LIBRARY_PATH /apps/anaconda/PRO/lib:$LD_LIBRARY_PATH

