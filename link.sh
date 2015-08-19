shopt -s extglob

DIR_BAK=~/.dotfiles_bak

for file in ./files/!(.|..)
do
  if [ -f ~/`basename "$file"` ]
  then
    if [ ! -d DIR_BAK ]; then
      echo "Creating backup dotfiles directory in $DIR_BAK"
      #mkdir DIR_BAK
    fi
    mv ~/`basename "$file"` DIR_BAK
  fi
  echo ~/`basename "$file"`
  echo `realpath -s "$file"`
  ln -s `realpath -s "$file"` ~/
done
