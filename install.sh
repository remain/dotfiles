repository=$(cd $(dirname $0); pwd)
case $OSTYPE in
  darwin*) PLATFORM="osx" ;;
  *) PLATFORM="unknown" ;;
esac

(cd ${repository} && git submodule update --init)

if [ "$PLATFORM" = "osx" ]; then
  find_opts=("-E")
else
  find_opts=() ;;
fi
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
