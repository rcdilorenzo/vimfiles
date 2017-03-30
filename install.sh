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

echo "Downloading patched fonts..."
git clone git@github.com:powerline/fonts.git --quiet
echo "Installing patched fonts..."
./fonts/install.sh
rm -rf fonts/

echo "The configuration files are now all in place."
echo "Follow these instructions to complete the installation:"
echo "1. Open vim (ignore warnings about missing dependencies)"
echo "2. Run :BundleInstall"
echo "3. Close and reopen vim"
echo ""
echo $'Your vim setup is complete. Thanks for using my vimfiles. - @rcdilorenzo (https://git.io/vMjZB)'
