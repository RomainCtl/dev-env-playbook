# History
SAVEHIST=10000
HISTSIZE=10000
HISTCONTROL=ignorespace:ereasedups
HISTORY_IGNORE="(clear|clr|pwd|history|exit|[bf]g *|cd ..|cd -|l[a,l,s,h,]*|* --help)"

# History command configuration
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_REDUCE_BLANKS

