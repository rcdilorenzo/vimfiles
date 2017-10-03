## Screenshot

<img width="1055" alt="Screenshot at 2017-03-30" src="https://cloud.githubusercontent.com/assets/634167/24508017/2f5f4076-1530-11e7-9a38-346e93f84919.png">

## Installation

```
\curl -L https://l.rcd.zone/2g8jyky | bash -s
```

Note that you should always read the bash script you're about to download and run. I'm not malicious but that does not mean everyone else is nice. :-)

Essentially this script just grabs the latest version of the `install.sh` file and runs it. Feel free to take a look at it [here](./install.sh).

## Manual Install

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
