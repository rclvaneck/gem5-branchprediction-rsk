#!/bin/bash

usage="Usage: bash $(basename "$0") [-h]
Clone the gem5 repository into the gem5 directory.
Clone the gem5-branchprediction-rsk repository into the gem5-branchprediction-rsk directory.
    -h    display this help and exit"

error="ERROR: already in the gem5-branchprediction-rsk directory. Move this script to a different location."

gem5_git="https://github.com/gem5/gem5.git"
gem5_bp_rsk_git="https://github.com/rclvaneck/gem5-branchprediction-rsk.git"
gem5_dest="gem5"
gem5_bp_rsk_dest="gem5-branchprediction-rsk"

gem5_tag="v23.1.0.0"

git_clone()
{
    local repo=$1
    local dest=$2

    if [ ! -e "$dest" ]; then
        git clone "$repo" "$dest"
    else
        echo "Skipping $dest: Destionation already exists."
    fi
    echo
}

echo "Branch Prediction Research Starter Kit: ARM and x86 System Emulation Modeling using gem5
..."
sleep 1

if [ ${PWD##*/} = "gem5-branchprediction-rsk" ]; then
    echo "$error"
    exit 1
fi

if [ $# = 1 ] && [ $1 = "-h" ]; then
    echo "$usage"
    exit 0
else
    git_clone "${gem5_git}" "${gem5_dest}"
    git_clone "${gem5_bp_rsk_git}" "${gem5_bp_rsk_dest}"

    (
        cd "${gem5_dest}"
        git checkout -b "${gem5_tag}" "tags/${gem5_tag}"
    )
fi