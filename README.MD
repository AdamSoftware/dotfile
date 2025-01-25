# Dotfiles for Development Setup

This repository contains my personal dotfiles for setting up a new development environment. Follow the instructions below to get everything up and running on your new computer.

Install Homebrew by running this command:

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

Install npm by running this command:

brew install npm

Install Neovim by running this command:

brew install neovim

Install Yabai by running this command:

brew install koekeishiya/formulae/yabai

Install skhd by running this command:

brew install koekeishiya/formulae/skhd

Install tmux by running this command:

brew install tmux

Install ghossty by running this command:

brew install --cask ghossty

Install Thefuck by running this command:

brew install thefuck

Install additional tools like git, curl, and zsh by running this command:

brew install git curl zsh

Clone the dotfiles repository by running:

git clone https://github.com/your-username/dotfiles.git ~/.dotfiles

Move the dotfiles to their proper locations. You can do this by running:

mv ~/.dotfiles/nvim ~/.config/
mv ~/.dotfiles/skhd ~/.config/
mv ~/.dotfiles/yabai ~/.config/
mv ~/.dotfiles/tmux ~/.config/

If Zsh is not your default shell, macOS should prompt you to switch to it. Accept the prompt to change it to Zsh.

Then, install Powerlevel10k for your Zsh prompt by running:

brew install romkatv/powerlevel10k/powerlevel10k

Once installed, add the following to your `~/.zshrc` file:

```bash
# Powerlevel10k configuration
source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme

# After doing all:
1. Run source ~/.zshrc

2. open Nvim and run :PlugInstall or just write the packagemanager file in nvim

3. do ctrl + I to install all tmux plugins 

4. close and reopen ghostty to start up the new config for ghossty

# what has been done

after everything is done ghostty should open up in tmux session everytime that you open the terminal up so you don't have to worry about losing your terminals or pages
you should also have a better looking terminal when it comes to see through 

The terminal will be see through you can change this in the ghostty settings on the opasity.
