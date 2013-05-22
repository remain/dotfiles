find . -regex "^\.\/\.[a-z.]+$" |
sed -e "s/.\///" |
while read dotfile
do
  case ${dotfile} in
    .git) continue;;
  esac

  ln -sf ${PWD}/${dotfile} ${HOME}/${dotfile}
done
