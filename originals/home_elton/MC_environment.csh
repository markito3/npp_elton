#!/bin/csh

# Get hdgeant4
# source /group/halld/Software/build_scripts/gluex_env_jlab.csh
# setenv MCWRAPPER_CENTRAL /work/halld2/home/elton/git/hd_utilities/MCwrapper
# setenv JANA_CALIB_CONTEXT "variation=mc"     # uncomment this line to access variation=mc ccdb variations
# setenv JANA_CALIB_CONTEXT "variation=mc_workfest2018 calibtime=2018-05-08-08-00-00"     # uncomment this line to access variation=mc ccdb variations
setenv JANA_CALIB_CONTEXT "variation=mc_cpp"     # uncomment this line to access variation=mc ccdb variations
# setenv JANA_GEOMETRY_URL "xmlfile:///work/halld2/home/elton/git/hdds/main_HDDS.xml"   #standard GlueX
# setenv JANA_GEOMETRY_URL "xmlfile:///work/halld2/home/elton/git/hdds/cpp_HDDS.xml"   #mods for CPP
# setenv JANA_GEOMETRY_URL "ccdb:///GEOMETRY/main_HDDS.xml"    #new standard GlueX geometry
setenv JANA_GEOMETRY_URL "ccdb:///GEOMETRY/cpp_HDDS.xml"    #cpp geometry
