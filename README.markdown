## Installation

0. `$ mkdir ~/dotfiles`
0. `$ git clone git@github.com:rcdilorenzo/vimfiles.git ~/dotfiles/vim`
0. `$ ln -s ~/dotfiles/vim ~/.vim`
0. `$ ln -s ~/dotfiles/vim/rc ~/.vimrc`
0. `$ mkdir ~/dotfiles/bundle`
0. `$ git clone git@github.com:gmarik/Vundle.vim.git ~/dotfiles/bundle/vundle`
0. Open vim (ignore warning about wombat256mod if using gvim or macvim)
0. Run `:BundleInstall`
0. Close and reopen vim
0. Install patched fonts (for arrows and other decorations)
  0. `$ git clone git@github.com:powerline/fonts.git`
  0. `$ ./fonts/install.sh`
  0. `$ rm -rf fonts/`

## Caveats

* `:Open` will open a directory relative to `~/workspaces`. Change `g:project_dir` if you use a different path.
