vim-config
==========
Clone into .vim

1) git clone https://github.com/acrawford78/vim-config.git .vim

2) In windows create a hard link in dos:

mklink /H _vimrc .vim\.vimrc

Windows vim uses _vimrc

3) Create symbolic link for plugins etc:

mklink /D vimfiles .vim
