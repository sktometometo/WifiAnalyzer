#!/bin/bash

function printHelp() {
    echo "usage: printHelp <name of place> <output dir>" 1>&2
    exit 1
}

if [ $# -ne 2 ]; then
    printHelp
fi

name_of_place=$1
output_dir=$(cd $(dirname $2); pwd)

iw wlan0 station dump > $output_dir/$(echo $name_of_place)_dump_$(date +%Y%m%d_%H%M%S).log
