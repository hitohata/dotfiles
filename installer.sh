#/bin/bash

DOT_CONFIG_DIR=${HOME}/.dotfiles

# change directory
if [ ! $DOT_CONFIG_DIR = $PWD ]; then

    CUREENT_DIR = $PWD

    if [ ! -d $DOT_CONFIG_DIR ];
    then
        mkdir -p $DOT_CONFIG_DIR
    fi

    cd $DOT_CONFIG_DIR
    rm -f $CUREENT_DIR

    git clone https://github.com/hitohata/dotfiles.git .
fi

# create backup directory

BACKUP_DIR="${HOME}/.DotenvBackups"

if [ ! -d $BACKUP_DIR ];
then
    mkdir -p $BACKUP_DIR
fi

# .bashrc
## remove .bashrc and add link
if [ -f ${HOME}/.bashrc ]; then
    mv ${HOME}/.bashrc ${BACKUP_DIR}/.bashrc
    ln -s ${HOME}/.dotfiles/.bashrc ~
fi

# nvim
if [ ! -d "./.config/nvim" ]; then
    git clone https://github.com/NvChad/NvChad ./.config/nvim --depth 1
fi
ln -s ${DOT_CONFIG_DIR}/nvim ${HOME}/.config/nvim
ln -s ${DOT_CONFIG_DIR}/nvchad/custom/ ${HOME}/.config/nvim/lua/
