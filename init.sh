# Copy files to homefolder
# Tmux
if [ -e "$HOME/.tmux" ] || [ -e "$HOME/.tmux.conf" ]
then 
        echo tmux config or folder already exists!
else
        echo Copying Tmux folders + config
        cp -r tmux $HOME/.tmux
        cp tmux.conf $HOME/.tmux.conf
fi

# Vim
if [ -e "$HOME/.vim" ] || [ -e "$HOME/.vimrc" ]
then 
        echo vim config or folder already exists!
else
        echo Copying vim folders + config
        cp vimrc $HOME/.vimrc
fi
