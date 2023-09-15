# My Dot Files

## Require

create a ~/.dotfiles dir and clone in there.

## Install

run following:

```bash
source installer.sh
```

This script creates a .DotenvBackups directory and moves .env files to there.
And adds symbolic links.

## Debugging

To debug shell script, use a following command:

```bash
docker compose run sh-debugger bash
```

## Reset neovim

Delete nvim folders in following directory:

* ~/.local/share/nvim
* ~/.cache/share/nvim
