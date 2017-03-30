if [ -f ~/.vimrc ]; then
    echo "Vim configuration already found. Please remove your .vimrc from your home directory and re-run."
    exit 1
fi

mkdir ~/vimfiles
echo "Downloading vimfiles..."
git clone git@github.com:rcdilorenzo/vimfiles.git --quiet
ln -s ~/vimfiles ~/.vim
ln -s ~/vimfiles/rc ~/.vimrc
mkdir ~/vimfiles/bundle

echo "Downloading vundle for dependencies..."
git clone git@github.com:gmarik/Vundle.vim.git ~/vimfiles/bundle/vundle --quiet

echo "Open vim (ignore warnings about missing dependencies)"
echo "Run :BundleInstall"
echo "Close and reopen vim"
read -rsp $'Press any key to install the patched fonts (or Ctrl-C to exit)...\n' -n1 key

echo "Downloading patched fonts..."
git clone git@github.com:powerline/fonts.git
echo "Installing patched fonts..."
./fonts/install.sh
rm -rf fonts/
