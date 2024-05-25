# Dotfiles
Contains the dotfiles for my Arch Linux system, controlled using [stow](https://www.gnu.org/software/stow/)

## Prerequisites
To use these dotfiles on your local system, ensure you have [git](https://wiki.archlinux.org/title/git) and [stow](https://archlinux.org/packages/extra/any/stow/) installed

`sudo pacman -S git` 
`sudo pacman -S stow`

## Installation
1) Pull the library into your $HOME directory: `git clone https://github.com/FlamemasterNXF/dotfiles`
2) Move into the `dotfiles` directory: `cd dotfiles/`
3) Use `stow` to symlink the dotfiles to the locations your system expects: `stow .`

## Important Notes
1) This repo contains both my old bash configuration and my current zsh configuration. Both work fine, but zsh is far superior in my opinion.
