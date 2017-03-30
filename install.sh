mkdir ~/vimfiles
git clone git@github.com:rcdilorenzo/vimfiles.git
ln -s ~/vimfiles ~/.vim
ln -s ~/vimfiles/rc ~/.vimrc
mkdir ~/vimfiles/bundle
git clone git@github.com:gmarik/Vundle.vim.git ~/vimfiles/bundle/vundle
echo "Open vim (ignore warning about wombat256mod if using gvim or macvim)"
echo "Run :BundleInstall"
echo "Close and reopen vim"
read -p "Once finished, press ENTER to download and install the patched fonts (or Ctrl-C to exit):"

echo "Installing patched fonts"
git clone git@github.com:powerline/fonts.git
./fonts/install.sh
rm -rf fonts/
