#cd
[ -d .backup ] || mkdir .backup

for f in $(basename -a .dotfiles/.*); do
    [ -d .dotfiles/$f ] && continue #.git .. .
    echo $f
    [ -f $f ] && [ -L $f ] && continue || [ -f $f ] && mv $f .backup/
    ln -s .dotfiles/$f .
done
#cd -