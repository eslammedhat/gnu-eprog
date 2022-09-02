#!/bin/bash

set -e
set -x

if [[ ${1} == '' ]]; then
    echo "Please speicfy binary file"
    exit 1
fi

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

dd if=/dev/zero of=${SCRIPT_DIR}/flash.bin bs=4096 count=4096
dd if=${1} of=flash.bin bs=4096 conv=notrunc
qemu-system-arm -M connex -pflash flash.bin -nographic -serial /dev/null
