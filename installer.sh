#/bin/bash

# get this file dir
script_path=$(readlink -f "$0")
script_dir=$(dirname "$script_path")

DOT_CONFIG_DIR=${HOME}/.dotfiles

# create backup directory

BACKUP_DIR="${HOME}/.DotenvBackups"

if [ ! -d $BACKUP_DIR ]; then
  mkdir -p $BACKUP_DIR
fi

# .bashrc
# call bash's script
if [ ! -d "./.config/nvim" ]; then
  bash ./dotfile-bash/setup.sh
fi

# .ideavimrc
# remove .ideavimrc and add link
if [ -f ${HOME}/.ideavimrc ]; then
  mv ${HOME}/.ideavimrc ${BACKUP_DIR}/.ideavimrc
  ln -s ${HOME}/.dotfiles/.ideavimrc ~
fi

# nvim
if [ ! -d "./.config/nvim" ]; then
  bash ./.neovim/setup.sh
fi

ln -s ${script_dir}/.ideavimrc ${HOME}/.ideavimrc
