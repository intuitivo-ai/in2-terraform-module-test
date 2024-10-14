#!/usr/bin/env bash
set -e
DIR=$(dirname $0)
source $DIR/functions.sh

cd $DIR
sudo yum-config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
sudo yum install gh -y
echo "Install requirements"
install_pip_requirements
