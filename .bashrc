if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM=xterm-256color
else
        export TERM=xterm-color
fi

export EC2='ubuntu@ec2-50-19-65-30.compute-1.amazonaws.com'

alias la='ls -a'
alias minecraft='java -Xmx1024M -Xms512M -cp ~/Desktop/minecraft.jar net.minecraft.LauncherFrame'
alias sass='sass --watch'
