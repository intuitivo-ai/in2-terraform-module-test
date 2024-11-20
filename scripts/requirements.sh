#!/usr/bin/env bash
set -e
DIR=$(dirname $0)
source $DIR/functions.sh

cd $DIR
echo "Install requirements"
install_pip_requirements
