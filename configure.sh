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
  printf "Usage: $0 <environment to configure>\n"
  printf "Available environments:\n"
  for env in "${ENVS[@]}"; do
    printf "$env\n"
  done
  exit 1
}

if [ -z "$1" ]; then
  print_usage
fi

do_env () {
  local $env=$1

  (
    printf "\nconfiguring $env environment\n"
    source $DIR_ROOT/environments/$env/configure.sh
    configure "$DIR_ROOT/environments/$env"
  )
}

for env in $@; do
  if [ "$env" == "all" ]; then
    for env in "${ENVS[@]}"; do
      do_env $env
    done
  else
    contains "${env}" "${ENVS[@]}"
    if [ $? -ne 0 ]; then
      printf "environemnt '$env' not found.\n"
      print_usage
    else
      do_env $env
    fi
  fi
done
