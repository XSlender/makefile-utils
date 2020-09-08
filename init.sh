#!/bin/bash

############################################
# This script is intended to initialize
# makefile capabilities on your project with
# the usage of git submodules.
#
# It will install a main makefile into your
# main project directory by copying the
# template located in the 'etc' folder.
############################################

# Variables initialization
############################################

# This script location
SCRIPT_DIR=`dirname "$(readlink -f "$0")"`
# The etc location
ETC_DIR="${SCRIPT_DIR}/etc"
# Makefile target location
TARGET_DIR="${SCRIPT_DIR}/.."

# Entrypoint
############################################

echo ""

if [ -f "${TARGET_DIR}/Makefile" ]; then
    echo "Saving old makefile into Makefile.save..."
    mv "${TARGET_DIR}/Makefile" "${TARGET_DIR}/Makefile.save"
fi

if [ -f "${TARGET_DIR}/makefile" ]; then
    echo "Saving old makefile into Makefile.save..."
    mv "${TARGET_DIR}/makefile" "${TARGET_DIR}/Makefile.save"
fi

echo "Initializing makefile environment..."

cp "${ETC_DIR}/Makefile" "${TARGET_DIR}"
chmod +x "${TARGET_DIR}/Makefile"
cd "${TARGET_DIR}" && make _makefile-test 2>/dev/null 