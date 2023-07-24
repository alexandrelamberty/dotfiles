# ~/.bashrc

# Initialize variables for non-login bash shells
[[ $- != *i* ]] && return # If not running interactively, don't do anything

# Completion
eval "$(gh completion -s bash)"

# Get color support for 'less'
export LESS="--RAW-CONTROL-CHARS"

# Use colors for less, man, etc.
[[ -f ~/.LESS_TERMCAP ]] && . ~/.LESS_TERMCAP

# Terminal Colors
eval $(dircolors -b ~/.dir_colors)

# Options
#shopt -s autocd # Allow accessing a directory  without cd
shopt -s extglob #

# Prompt
#export PS1='\[\033[0;34m\]\W \[\033[0;33m\]$\[\033[00m\] ' 
#export PS1='\[\033[0;34m\]\W \[\033[0;33m\]$\[\033[00m\] ' 
#PS1='\u@\h \W\$ '
export PS1="\[\033[0;34m\]\W\$(parse_git_branch)\$(add_venv_info)\[\033[0;33m\] $\[\033[00m\] ";

# Virtual ENV stuff
add_venv_info () {
    if [ -z "$VIRTUAL_ENV_DISABLE_PROMPT" ] ; then
        VIRT_ENV_TXT=""
        if [ "x" != x ] ; then
            VIRT_ENV_TXT=""
        else
            if [ "`basename \"$VIRTUAL_ENV\"`" = "__" ] ; then
                # special case for Aspen magic directories
                # see http://www.zetadev.com/software/aspen/
                VIRT_ENV_TXT="[`basename \`dirname \"$VIRTUAL_ENV\"\``]"
            elif [ "$VIRTUAL_ENV" != "" ]; then
                VIRT_ENV_TXT="(`basename \"$VIRTUAL_ENV\"`)"
            fi
        fi
        if [ "${VIRT_ENV_TXT}" != "" ]; then
           echo ${VIRT_ENV_TXT}" "
        fi
    fi
}


parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}


# Accesing nested directory
CDPATH=".:~:~/projects:~/documents:~/documents/notes"

# Export variables
export EDITOR="vim"
export GOPATH="$HOME/.go"

# Export paths 
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin/scripts:$PATH"
export PATH="$HOME/.gem/ruby/2.7.0/bin:$PATH"
export PATH="$PATH:/usr/local/go/bin" # Go language
export PATH="$PATH:$HOME/.rvm/bin" # Ruby 
export PATH="$HOME/Softwares/flutter/bin:$PATH"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$HOME/.config/nvim/utils/bin:$PATH"
export PATH=$HOME/.config/nvcode/utils/bin:$PATH
export DENO_INSTALL="/home/eevos/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
PATH="/home/eevos/perl5/bin${PATH:+:${PATH}}"; export PATH;
export PATH="$HOME/.symfony/bin:$PATH"
# Ruby
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Aliases

# Bash
alias br='source ~/.bashrc'
alias bpr='su - eevos'
alias rxrdb='xrdb -load ~/.Xresources'
alias trees='tree -L 2'
alias ls='ls --color=auto'
alias la='ls -a --color=auto'
alias lh='ls -d .?*'
alias whouse="sudo ss -lptn 'sport = :80'"
alias whouseport='f(){sudo ss -lptn "sport = :'$1'"; unset -f f;};f'
alias scan='sudo nmap -sn 192.168.1.0/24'

alias ideas='vim ~/documents/ideas/ideas.yml'
alias logs='vim ~/documents/logs/logs.yml'
alias todos='vim ~/documents/todos/todos.yml'
alias topics='vim ~/documents/topics/topics.yml'

alias yta="youtube-dl --add-metadata -xic" # Download audio only
alias yt="youtube-dl --add-metadata -ic" # Download video link

# Tmux
alias tkill='tmux kill-session -t '$1''
alias tls='tmux ls'

alias wifihotspot='iw dev wlo1 connect TheVicious key 0:lilolilo'
alias wifihome='iw dev wlo1 connect Wifi-2.4-62E0 key 0:c6RC9zk3aR2P'

# Move to a private file
#[[ -f ~/.bashrcp ]] && source ~/.bashrcp # Source private .bashrc
alias sshawsubuntu="ssh -i ~/.ssh/aws-key.pem ubuntu@ec2-3-131-85-200.us-east-2.compute.amazonaws.com"
alias sshaws="ssh -i ~/.ssh/aws-key.pem ec2-user@ec2-3-16-29-194.us-east-2.compute.amazonaws.com"
alias sshvps="ssh vps491993.ovh.net"
alias sshtrinity-sv="ssh eevos@192.168.1.25"
alias sshneo-ws="ssh eevos@192.168.1.47"

export PATH=$HOME/.config/nvcode/utils/bin:$PATH

# TODO: Re enable
#[ -f ~/.fzf.bash ] && source ~/.fzf.bash

PATH=~/.console-ninja/.bin:$PATH