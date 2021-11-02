# Noah's neovim

My neovim config using the gruvbox dark theme.
And some nice plugins.

## Installation

These instructions presume you have `nvim` already installed

1. To use, put these files in `~/.config/nvim`
2. Make sure you have `Lf`, `bat`, `ripgrep, fzf and fd-find` installed.
3. Install vim-plug: ```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
4. Open `nvim` and issue `:PlugInstall`
5. Profit

Credits to: Fredrik olsson for original config that this is based on.
