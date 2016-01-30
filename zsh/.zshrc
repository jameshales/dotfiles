if [ -z $TMUX ]; then
  exec tmux
else
  ZSHRC_D=~/.zshrc.d
  ZSHRC_LOCAL_D=~/.zshrc.local.d

  if [[ -d $ZSHRC_D ]]; then
      for ZSH_FILE in $ZSHRC_D/*(n); do
          source $ZSH_FILE;
      done;
  fi;

  if [[ -d $ZSHRC_LOCAL_D ]]; then
      for ZSH_FILE in $ZSHRC_LOCAL_D/*(n); do
          source $ZSH_FILE;
      done;
  fi;
fi;
