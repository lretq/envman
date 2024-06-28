function envman 
    set envdir "$HOME/.envman/"
    cp "$envdir/active" "$envdir/.tmp"
    command envman $argv
    set ret "$status"
    if ! test "$ret" -eq 0
        return $ret
    end
    if test (count $argv) -eq 0
      return
    end
    if test $argv[1] = "activate"; or test $argv[1] = "edit"
        for var in $(cat "$envdir/.tmp"|grep export|awk '{sub(/=.*/,""); print $2}')
            set --erase "$var"
        end 
        source "$envdir/active"
    end
end
