# Dotfiles
Contains the dotfiles for my Arch Linux system, managed using [stow](https://www.gnu.org/software/stow/).

## Usage

### Prerequisite
To use these dotfiles on your local system, ensure you have [git](https://wiki.archlinux.org/title/git) and [GNU stow](https://archlinux.org/packages/extra/any/stow/) installed: `sudo pacman -S git stow` 

### Dotfiles Contained
This repository contains dotfiles for:
- `dunst`
- `hyprland`, with Nvidia patches.
- `kitty`
- `neofetch`
- `nvim` (see Note 2)
- `rofi`, including my custom Wallpaper selector scripts.
- `swayidle`
- `swaylock`
- `wallust`
- `waybar`
- `yazi`

It also contains:
- A `.bashrc` and `.bash_prompt`, for Bash configuration (see Note 1).
- A `.zshrc` and `.pk10.zsh`, for Zsh configuration (see Note 1).

### Installation
1) Clone the library into your Home directory: `git clone https://github.com/FlamemasterNXF/dotfiles`
2) Move into the `dotfiles` directory: `cd dotfiles/`
3) Use `stow` to symlink the dotfiles to the locations your system expects: `stow .`

## Notes
1) This repo contains both my old bash configuration and my current zsh configuration. Both work fine, but zsh is far superior in my opinion.
2) The nvim config is very incomplete as of now.
