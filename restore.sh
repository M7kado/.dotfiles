#cd
[ -d .backup ] || exit 1

for f in $(basename -a .dotfiles/.*); do
    [ -d .dotfiles/$f ] && continue #.git .. .
    echo $f
    [ -f $f ] && [ -L $f ] && [ $(readlink $f) = .dotfiles/$f ] && rm $f

    [ -f .backup/$f ] && [ ! -e $f ] && mv .backup/$f .

done

[ $(ls -A .backup) ] || rm -r .backup

#cd -