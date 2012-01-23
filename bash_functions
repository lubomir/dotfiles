
function set_title()
{
    case "$TERM" in
        xterm*)
        echo -ne "\033]0;$1\007"
        ;;
    esac
}

_hlint()
{
    local prev cur i
    COMPREPLY=()
    _get_comp_words_by_ref cur prev

    if [[ "$cur" != -* ]]; then
        _filedir '?(l)hs'
    else
        COMPREPLY=( $( compgen -W "-? --help -v --version -r --report -h --hint -c --color --colour -i  --ignore -s --show -e --extension -X --language -u --utf8 --encoding -f --find -t --test -d --datadir -q --quiet --cpp-define --cpp-include" -- "$cur" ) )
    fi
} &&
complete -F _hlint hlint

parse_git_branch()
{
    git branch --no-color 2>/dev/null | sed -e "/^[^*]/d" -e "s/^* \(.*\)/\1/"
}

# vim: ft=sh
