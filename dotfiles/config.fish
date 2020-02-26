export SHELL="fish"
export VISUAL="vim"
export CHROME_EXECUTABLE="google-chrome-stable"

fish_vi_key_bindings

alias .. "cd .."
alias ... "cd ../.."
alias .... "cd ../../.."
alias b="cd -"

alias mv "mv -v"
alias rm "rm -i -v"
alias cp "cp -v"

alias c "clear"
alias m "make"
alias p "python"
alias ip "ipython"
alias cat "bat"
alias grep "rg"
alias ls "exa"
alias ll "exa -ll"
alias g 'git'
alias gs "git status"
alias gp "git push"
alias v "nvim"
alias afk "i3lock"
alias rnm "sudo systemctl restart NetworkManager.service"
