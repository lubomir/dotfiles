alias ll='ls -lh'
alias la='ls -A'
alias e="gvim -p"
alias ec="e --cmd 'set updatetime=500' --cmd 'let g:devhelpAssistant = 1' --cmd 'let g:devhelpMinWordLength = 5'"
alias hugs="hugs -E\"vim +%d %s\""
alias diff="diff -u"
alias man="~/.bin/man.sh"
alias x-www-browser="epiphany --new-tab"
alias cal="ncal -M -b"
alias htemp="hddtemp /dev/sda"

alias myip='echo `wget -q -O - http://volatileminds.net/ip.php`'
alias rlsicstus='rlwrap -O "^\|" -pBLUE -g "^.$" sicstus'
alias fix-pager="xprop -root -f _NET_DESKTOP_GEOMETRY 32c -set _NET_DESKTOP_GEOMETRY"
alias fix-notifications="xprop -f _NET_WORKAREA 32cccc -set _NET_WORKAREA 0,28,1680,1022 -root"
alias pucmeloud="cat ~/Dokumenty/pucmeloud.txt"
