## Installation

0. `$ mkdir ~/vimfiles`
0. `$ git clone git@github.com:rcdilorenzo/vimfiles.git ~/vimfiles`
0. `$ ln -s ~/vimfiles ~/.vim`
0. `$ ln -s ~/vimfiles/rc ~/.vimrc`
0. `$ mkdir ~/vimfiles/bundle`
0. `$ git clone git@github.com:gmarik/Vundle.vim.git ~/vimfiles/bundle/vundle`
0. Open vim (ignore warnings)
0. Run `:BundleInstall`
0. Close and reopen vim
0. Install patched fonts (for arrows and other decorations)
  0. `$ git clone git@github.com:powerline/fonts.git`
  0. `$ ./fonts/install.sh`
  0. `$ rm -rf fonts/`

## Caveats

* `:Open` will open a directory relative to `~/workspaces`. Change `g:project_dir` if you use a different path.
