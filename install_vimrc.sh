 #!/bin/sh
 set -e
 
 cd ~/.vim_runtime
 
 echo 'set runtimepath+=~/.vim_runtime
 
 source ~/.vim_runtime/vimrcs/basic.vim
 source ~/.vim_runtime/vimrcs/plugins.vim
 
 hi Normal guibg=NONE ctermbg=NONE

 try
 source ~/.vim_runtime/my_configs.vim
 catch
 endtry' > ~/.vimrc
 
 echo "\n\n\n----------Welcome to use my magic vim---------- \n\n-------------*★,°*:.☆\(￣▽￣)/$:*.°★* 。-----------------\n\n"
