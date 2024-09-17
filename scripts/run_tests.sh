#!/usr/bin/env bash
set -e

TYPE="$1"

case $TYPE in
default)
  ./scripts/requirements.sh
  echo "Run tests"
  pytest --cov .
  chown -vR 1000:1000 .
  ;;
terraform)
  echo "Run tests"
  terraform test
  ;;
*)
  echo "Run tests"
  ;;
esac