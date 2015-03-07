## Installation

1. `$ mkdir ~/dotfiles`
2. `$ git clone git@github.com:ravinggenius/dotfiles-vim.git ~/dotfiles/vim`
3. `$ ln -s ~/dotfiles/vim ~/.vim`
3. `$ ln -s ~/dotfiles/vim/rc ~/.vimrc`
3. Open vim (ignore warning about wombat256mod if using gvim or macvim)
4. Run `:BundleInstall`
5. Close and reopen vim

## Caveats

* `:Open` will open a directory relative to `~/Code`. Change `g:project_dir` if you use a different path.
