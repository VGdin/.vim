# Copy files to homefolder
if [ -e "$HOME/.tmux" ] || [ -e "$HOME/.tmux.conf" ]
then 
        echo tmux config or folder already exists, exiting!
        exit 1
else
        echo Copying Tmux folders + config
        cp -r .tmux $HOME
        cp .tmux.conf $HOME
fi

if [ -e "$HOME/.vim" ] || [ -e "$HOME/.vimrc" ]
then 
        echo vim config or folder already exists, exiting!
        exit 1
else
        echo Copying vim folders + config
        cp -r .vim $HOME
        cp .vimrc $HOME
fi
