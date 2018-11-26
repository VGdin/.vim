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

#Oh my zsh
if [ -e "$HOME/.oh-my-zsh/" ]
then 
        echo Oh-my-zsh already exist
else
        wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
fi

#zsh
if [ -e "$HOME/.zshrc" ]
then 
        echo zsh config or folder already exists!
else
        echo Copying zsh folders + config
        cp zshrc $HOME/.zshrc
        source $HOME/.zshrc
fi


