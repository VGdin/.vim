#!/bin/sh
#
# Setup a work space called `work` with two windows
# first window has 2 panes. 
# The first pane set at 75%, split horizontally, set to run remote server
# pane 2 is running nothing
#

session="work"

# set up tmux
tmux start-server

# create a new tmux session, starting vim from a saved session in the new window
tmux new-session -d -s $session -n vim 

# Select pane 1, set dir to api, run vim
tmux selectp -t 1 
# tmux send-keys "scaleway" C-m 

# Split pane 1 horizontal by 65%, start redis-server
tmux splitw -h -p 25

# Select pane 1
tmux selectp -t 1

# create a new window called scratch
tmux new-window -t $session:1 -n scratch

# return to main vim window
tmux select-window -t $session:0

# Finished setup, attach to the tmux session!
tmux attach-session -t $session
