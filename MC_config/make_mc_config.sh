#!/bin/bash
replacements=$1
. $replacements
script=s^\<tag\>^$tag^
script=${script}\;s^\<output_dir\>^$output_dir^
script=${script}\;s^\<npp_elton_dir\>^$npp_elton_dir^
script=${script}\;s^\<generator_config_file\>^$generator_config_file^
sed $script MC.config.template
