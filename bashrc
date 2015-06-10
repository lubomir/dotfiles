# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoreboth:erasedups
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTFILESIZE=5000
export HISTSIZE=5000
export HISTIGNORE="ls:logout:exit"

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

shopt -s cdspell

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

for FILE in ~/.bash_aliases ~/.bash_functions ~/.term_colors /etc/bash_completion /etc/profile.d/vte.sh
do
    [ -f $FILE ] && . $FILE
done

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

export PATH=./.cabal-sandbox/bin:$HOME/.cabal/bin:$HOME/.gem/ruby/1.9.1/bin:$HOME/.local/bin:$PATH

export LESS=" -R"

export EDITOR="vim"

case "$TERM" in
    xterm*)

    # My fancy prompt that displays error code of last command (if it failed)
    PS1="\[$YELLOW\]\h\[$NORMAL\]:\w \[$REDB\]"'$(R=$?; if [ $R -ne 0 ];then echo -ne "($R) ";fi)'"\[$NORMAL\]"'$(BR=$(git rev-parse --abbrev-ref HEAD 2>/dev/null || :); if [ -n "$BR" ]; then echo -ne "\[$BLUEB\]($BR)\[$NORMAL\]"; fi)'"\n\$ "

    ;;
    *)
    PS1="\h\w \$ "
    ;;
esac
export PS1

# My completes
complete -W "start stop restart status" servers.sh
complete -W "disk mem" sleeper
complete -W "status help puburl stop running start filestatus ls" dropbox
complete -f -X '*.@(o|so|so.|hi!(conf)|a|rpm|gif|GIF|jp?(e)g|JP?(E)G|mp3|MP3|mp?(e)g|MPG|avi|AVI|asf|ASF|ogg|OGG|class|CLASS|pdf|dvi|ps|dep)' e
complete -W "build clean help preview rebuild server" hakyll
#complete -F _mplayer totem

GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
export GCC_COLORS

XDG_DATA_DIRS=$HOME/.local/share:$XDG_DATA_DIRS
export PYLINTHOME=$HOME/.cache/pylint.d/
