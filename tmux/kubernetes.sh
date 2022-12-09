#!/bin/bash
SESSION="kubernetes"

tmux -2 new-session -d -s $SESSION


tmux new-window -t $SESSION:0 -n 'Monitor'

tmux split-window -h
tmux split-window -v

tmux select-pane -t 0
tmux send-keys 'htop' C-m

tmux select-pane -t 1
tmux send-keys 'watch free' C-m

tmux select-pane -t 2
tmux send-keys 'minikube start' C-m

tmux new-window -t $SESSION:1 -n 'k8s'

tmux split-window -h

tmux select-pane -t 0
tmux send-keys 'watch kubectl get pods -A' C-m

tmux select-pane -t 1
tmux send-keys 'cd /home/fkaanoz/dev && ls' C-m

tmux -2 attach-session -t $SESSION
