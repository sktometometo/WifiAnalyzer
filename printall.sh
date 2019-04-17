#!/bin/bash

function printHelp() {
    echo "usage: printHelp <name of place> <output dir>" 1>&2
    exit 1
}

if [ $# -ne 2 ]; then
    printHelp
fi

script_dir=$(cd $(dirname $0); pwd)
name_of_place=$1
output_dir=$(cd $(dirname $2); pwd)

echo "print dump"
bash $script_dir/printdump.sh $1 $2

echo "print link"
bash $script_dir/printlink.sh $1 $2

echo "print speed"
bash $script_dir/printspeed.sh $1 $2

echo "print nmcli"
bash $script_dir/printnmcli.sh $1 $2

echo "print scan"
bash $script_dir/printscan.sh $1 $2

