#!/bin/sh

repository=$(cd $(dirname $0); pwd)
(cd ${repository} && git submodule update --init)

case $OSTYPE in
  darwin*) find_opts=("-E") ;;
  *) find_opts=() ;;
esac
find ${find_opts[@]} ${repository} -regex "${repository}/dot\.[^/]+$" |
sed -e "s|${repository}/||" |
while read dotfile
do
  link_name=$(echo ${dotfile} | sed -e "s/^dot//g")
  if [ ! -e ${HOME}/${link_name} ]; then
    echo "ln -s ${repository}/${dotfile} ${HOME}/${link_name}"
    ln -s ${repository}/${dotfile} ${HOME}/${link_name}
  else
    echo "${HOME}/${link_name} exists"
  fi
done
