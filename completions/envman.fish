set -l commands activate active list new edit shell help version

function listenvs
    echo -n (envman list | tail -n +2)
end

# disable files 
complete -c envman -f

complete -c envman -n "not __fish_seen_subcommand_from $commands" \
    -a "activate active list new edit version"

complete -c envman -n "__fish_seen_subcommand_from activate edit" \
    -a "$(listenvs)"
