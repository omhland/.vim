#todo fix the paths!

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

apt-get install build-essential cmake vim-nox python3-dev
vim +PluginInstall +qall
python3 ~/.vim/bundle/YouCompleteMe/install.py



cd ~/.vim/bundle && git clone git://github.com/honza/vim-snippets.git
