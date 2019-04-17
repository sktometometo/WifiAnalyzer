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

speedtest --server 6492 > $output_dir/$(echo $name_of_place)_speed_$(date +%Y%m%d_%H%M%S).log
