if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM=xterm-256color
else export TERM=xterm-color
fi

# globals
export EC2='ubuntu@ec2-50-19-65-30.compute-1.amazonaws.com'

# navigation aliases
alias cd='cd_ls'
alias la='ls -a'
alias ll='ls -l'
alias l='ls'
alias lla='ls -la'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'

# ssh
alias labs='ssh davidxu@pennapps.com'

# web
alias wget='wget -c'

# search
alias ack='ack --flush --color'

# applications
alias minecraft='java -Xmx1024M -Xms512M -cp ~/Desktop/minecraft.jar net.minecraft.LauncherFrame'
alias sass='sass --watch'
alias python='ipython'
alias chrome-local='chromium-browser --allow-file-access-from-files'
alias chrome='google-chrome'

# editor-related
# ain't no one usin' nothin but vim!
alias vi='vim'
alias emacs='vim'
alias nano='vim'
alias gedit='vim'

alias lvim="!vim" # lastvim

# system
alias logout='lxsession-logout'
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'

alias install='sudo apt-get install'
alias uninstall='sudo apt-get rm'
alias update='sudo apt-get update'

# funny stuff
alias echo='cowsay'


# have it show it after changing
function cd_ls(){
  builtin cd $@; ls
}

# Usage: seasprint xx.pdf (taken from KH)
function seasprint() {
   cat "$1" | ssh davidxu@eniac.seas.upenn.edu lpr -P169 -o Duplex=DuplexNoTumble
}

# Block or unblock Facebook (taken from KH)
blockfb() {
    if [ -f /etc/hosts-fb ]; then # Facebook is blocked 
        read -sp "Are you sure you want to unblock Facebook? " response
        if [ $response != "YesI'mfucking*positive*" ]; then
            echo; echo "Sorry, I guess you're not sure."
        else
            echo
            sudo mv /etc/hosts-fb /etc/hosts
            echo "Facebook has been unblocked."
        fi
    else # Block Facebook
        sudo cp /etc/hosts /etc/hosts-fb
        sudo sh -c 'echo "127.0.0.1 facebook.com" >> /etc/hosts'
        sudo sh -c 'echo "127.0.0.1 www.facebook.com" >> /etc/hosts'
        echo "Facebook has been blocked."
    fi
}



# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}
