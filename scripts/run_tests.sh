#!/usr/bin/env bash
set -e

TYPE="$1"

case $TYPE in
default)
  ./scripts/requirements.sh
  echo "Run tests"
  if ls tests/test_*.py 1> /dev/null 2>&1; then
    pytest --cov .
    chown -vR 1000:1000 .
  fi
  ;;
terraform)
  echo "Run tests"
  terraform test
  ;;
*)
  echo "Run tests"
  ;;
esac