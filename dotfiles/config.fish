export SHELL="fish"

fish_vi_key_bindings

alias .. "cd .."
alias ... "cd ../.."
alias .... "cd ../../.."
alias b "cd -"

alias mv "mv -v"
alias rm "rm -i -v"
alias cp "cp -v"

alias m "make"
alias p "python"
alias ip "ipython"
alias cat "bat"
alias grep "rg"
alias ls "lsd"
alias ll "lsd -l"
alias lt "lsd --tree"
alias g 'git'
alias gs "git status"
alias gp "git push"
alias gd "git diff"
alias ga "git add"
alias gcm "git commit -m"
alias afk "i3lock-fancy"
alias restart_network "sudo systemctl restart NetworkManager.service"
alias do "docker"
alias dc "docker-compose"
alias du "du -ch --max-depth=1"
alias md "mkdir"
alias o "open"
