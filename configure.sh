#!/bin/bash
shopt -s nullglob

DIR_ROOT=`realpath "$(dirname "$0")"`;
source $DIR_ROOT/utils/utils.sh

ENVS=()
for dir in $DIR_ROOT/environments/*; do
  #source $dir/configure.sh
  #[[ $file =~ .*_(.*)\.sh ]]
  #ENVS+=(${BASH_REMATCH[1]})
  ENVS+=(`basename "$dir"`)
done

print_usage () {
  echo "Usage: $0 <environment to configure>"
  echo "Available environments:"
  for env in "${ENVS[@]}"; do
    echo $env
  done
  exit 1
}

if [ -z "$1" ]; then
  print_usage
fi


for env in $@; do
  (
    source $DIR_ROOT/environments/$env/configure.sh
    configure "$DIR_ROOT/environments/$env"
  )
done
