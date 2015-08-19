shopt -s extglob

DIR_BAK=~/.dotfiles_bak

for file in ./files/!(.|..)
do
  if [ -f ~/`basename "$file"` -o -d ~/`basename "$file"` ]
  then
    if [ ! -d $DIR_BAK ]; then
      echo "Creating backup dotfiles directory in $DIR_BAK"
      mkdir $DIR_BAK
    fi
    echo "Moving ~/`basename "$file"` to $DIR_BAK"
    mv ~/`basename "$file"` $DIR_BAK
  fi
  echo "Soft linking `realpath -s "$file"` to ~/"
  ln -s `realpath -s "$file"` ~/
done
