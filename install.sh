#/bin/sh
# My biggest bash script ever, so it looks like shit, I know

# Check git installed
command -v git >/dev/null 2>&1 || { echo >&2 "Git required but not installed, so installation will be aborted."; exit 1; }

# Copy all content of vim folder to ~/.vim
printf "\n\nCopying vundle packages files to $HOME/.vim\n"
cp -r "$PWD/vim" "$HOME/.vim"

# Copy vimrc to ~/.vimrc
printf "Copying .vimrc to $HOME/.vimrc\n"
cp "$PWD/vimrc" "$HOME/.vimrc"

# Set basic plugin set, because no one else existed yet
sed -i "1i\" Basic plugins set\nsource $HOME/.vim/basic.vim\n\n" "$HOME/.vimrc"

# Install vundle
printf "Installing Vundle\n"
git clone "https://github.com/VundleVim/Vundle.vim.git" "$HOME/.vim/bundle/Vundle.vim"

# install all vundle plugins
printf "Installation almost done! Wait untill vundle will install all plugins.\nThen you can use your vim installation!\n\nGood luck!" >> "$PWD/vimhelp"
vim -c "PluginInstall" "$PWD/vimhelp"
rm -f "$PWD/vimhelp"

# Well done!
printf "Well done!\n\nNow you can remove this folder with this command:\nrm -rf $PWD\n\n"
