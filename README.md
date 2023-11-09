# neovim
nvim config

## Installation

1. clone repo somewhere and symlink to ~/.config/nvim or clone inside ~/.config as `~/.config/nvim` 
2. install fzf via brew
```
brew install fzf
```
3. install solargraph ruby gem (optional/recommended)
```
gem install solargraph
```
4. install ctags (for tagbar - optional)
```
brew install ctags
```
5. launch nvim and allow it to install plugins

## Key binding notes
* the default **leader key** has been changed to <space>
* to open fuzzy file search enter <space>f
* to open Explorer, enter <space>e
* to jump to a method or class definition in a ruby file: `gd`, use ctrl-o to jump back
