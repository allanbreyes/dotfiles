if [ $commands[kubectl] ]; then
  source <(kubectl completion zsh)
fi
export KUBECONFIG=$HOME/.kube/config
