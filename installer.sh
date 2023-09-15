#/bin/bash

# create backup directory

BACKUP_DIR="${HOME}/.DotenvBackups"

if [ ! -d $BACKUP_DIR ];
then
    mkdir -p $BACKUP_DIR
fi

# .bashrc
## remove .bashrc and add link
if [ -f ${HOME}/.bashrc ];
then
    mv ${HOME}/.bashrc ${BACKUP_DIR}/.bashrc
    ln -s ${HOME}/.dotfiles/.bashrc ~
fi

# neovim settins
# add link
ln -s ${HOME}/.dotfiles/.config/nvim ${HOME}/.config/nvim 
