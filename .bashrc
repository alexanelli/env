. $HOME/.env/z.sh
. $HOME/.env/git-config.sh


### COLORS ###
export CLICOLOR=1 # Mac OSX
alias ls='ls --color=auto'


export VISUAL=vim
export EDITOR="$VISUAL"

PS1='\[\e[0;36m\]┌─\[\e[1;34m\][\u@\h]\[\e[0m\]\[\e[0;36m\]─\[\e[0;93m\](\w)\n\[\e[0;36m\]└─\[\e[1;32m\][\A]\[\e[0m\]\$ '
alias ll='ls -alF'
alias la='ls -A'

alias rundocker='docker run -it --rm'
alias pgdocker='docker exec -it database psql -h 127.0.0.1 -p 5432 -U admin -d Database'

# use this when running an x server on windows for x forwarding from wsl
# make a windows shortcut with the following as the target, and run it before using the alias
# "C:\Program Files\VcXsrv\vcxsrv.exe" :0 -multiwindow -clipboard -wgl
alias guimacs='
export DISPLAY=:0.0
export LIBGL_ALWAYS_INDIRECT=1
setxkbmap -layout us
setsid emacs
exit
'
