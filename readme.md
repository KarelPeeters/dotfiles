My personal cross-machine dotfiles.

## Setup instructions

* Clone this repo somewhere, eg. ~/dotfiles
* Source the files in this repo from the right entry points:
    * In `~/.bashrc`:
        ```bash
        if [ -f ~/dotfiles/.bashrc ]; then
            source ~/dotfiles/.bashrc
        fi;
        ```
    * In `~/.bash_completion`:
        ```bash
        if [ -f ~/dotfiles/complete_alias ]; then
            source ~/dotfiles/complete_alias
        fi;
        ```
    * In `~/.gitconfig`:
        ```
        [include]
        path=~/dotfiles/.gitconfig
        ```
