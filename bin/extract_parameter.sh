#!/bin/bash
config_file=$1
parameter_name=$2
grep $parameter_name $config_file | awk -F= '{print $2}'
