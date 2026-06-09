# my personal .bashrc :>
case $- in
    *i*) ;;
      *) return;;
esac
HISTCONTROL=ignoreboth:erasedups
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s histappend checkwinsize globstar autocd cdspell dirspell cmdhist\
    gnu_errfmt dotglob nullglob
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

[ -f "$HOME/.bash_aliases" ] && . "$HOME/.bash_aliases"
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"
export PATH="$HOME/.local/bin:$PATH"

case "$TERM" in xterm-color|*-256color) color_prompt=yes;; esac
force_color_prompt=yes
if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        color_prompt=yes
    else
        color_prompt=
    fi
fi

exit_code() {
    case $EXIT in
        0) ;;
        130) printf ' [SIGINT]' ;;
        *) printf ' [%s]' "$EXIT" ;;
    esac
}

if [ "$color_prompt" = yes ]; then
    PROMPT_COMMAND='EXIT=$?'
    C_USER='\[\e[1;32m\]'
    C_PATH='\[\e[1;34m\]'
    C_EXIT='\[\e[1;31m\]'
    C_RESET='\[\e[0m\]'
    PS1='[\A] '$C_USER'\u@\h'$C_RESET':'$C_PATH'\W'$C_EXIT'$(exit_code)'$C_RESET'\$ '
else
    PS1='\u@\h:\w\$ '
fi
PS2='-> '
unset color_prompt force_color_prompt
export GCC_COLORS=\
'error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
