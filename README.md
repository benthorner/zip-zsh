# zip-zsh

A zippy config for zsh.

## Install

Run the following to get started.

    git clone https://github.com/benthorner/zip-zsh.git $HOME/.zip-zsh

Then add the following to ''.zshrc''.

    source $HOME/.zip-zsh/zshrc

Now close and restart your terminal.

## Install (Git)

Git branch completion is useful.

  https://medium.com/@oliverspryn/adding-git-completion-to-zsh-60f3b0e7ffbc

## Config (Git)

The following settings work well.

```
git config --global branch.autosetuprebase always
git config --global color.ui auto
git config --global push.default current
```
