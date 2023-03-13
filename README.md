# zip-zsh

A zippy config for zsh.

## Install

Run the following to get started.

    git clone https://github.com/benthorner/zip-zsh.git $HOME/.zip-zsh

Then add the following to `.zshrc`.

    source $HOME/.zip-zsh/zshrc

Now close and restart your terminal.

## Install (Git)

Git branch completion is useful.

  https://medium.com/@oliverspryn/adding-git-completion-to-zsh-60f3b0e7ffbc

## Config (Git)

The following settings work well.

    git config --global branch.autosetuprebase always
    git config --global color.ui auto
    git config --global push.default current
    git config --global fetch.parallel 5
    git config --global fetch.prune true

## Config (Pre Catalina)

Terminal tabs don't preserve `pwd`.

https://superuser.com/questions/232835/open-a-new-tab-in-the-same-directory

Add the following to `.zshrc` to fix.

    # Fix tabs not preserving 'pwd'
    chpwd () {print -Pn "\e]2; %~/ \a"}
