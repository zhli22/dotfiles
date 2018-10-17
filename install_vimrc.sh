 #!/bin/sh
 set -e
 
 cd ~/.vim
 
 echo 'set runtimepath+=~/.vim
 
 source ~/.vim/vimrcs/basic.vim
 source ~/.vim/vimrcs/plugins.vim
 
 try
 source ~/.vim/my_configs.vim
 catch
 endtry' > ~/.vimrc
 
 echo "\n\n\n----------Welcome to use my magic vim---------- \n\n-------------*★,°*:.☆\(￣▽￣)/$:*.°★* 。-----------------\n\n"
