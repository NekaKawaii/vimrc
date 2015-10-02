"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle bundles
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'       " Vundle itself
Plugin 'bling/vim-airline'          " Airline
Plugin 'jlanzarotta/bufexplorer'    " Bufexplorer
Plugin 'scrooloose/nerdtree'        " NERDTree

" Themes
Plugin 'rainux/vim-desert-warm-256' " Warm Desert theme

call vundle#end()
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
" One step left. Uncomment next line to use desert-warn-256 colorsheme 
"colors desert-warm-256

" Airline
let g:airline_powerline_fonts = 1
