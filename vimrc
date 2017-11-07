syntax enable
set background=dark
" Numbers
set number
set ts=2
set expandtab
set autoindent
set shiftwidth=2
map ; :
imap <C-k> <Up><End><kEnter>
imap <C-d> <Home><Del>
"colorscheme solarized
colorscheme gruvbox
"colorscheme molokai

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'morhetz/gruvbox'
" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'
"注释
Plug 'tomtom/tcomment_vim'
"快速定位
Plug 'easymotion/vim-easymotion'
let g:EasyMotion_smartcase = 1
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to
" EasyMotion.
" " Without these mappings, `n` & `N` works fine. (These mappings just provide
" " different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
" Gif config
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-rails'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" airline设置
set laststatus=2
" " 使用powerline打过补丁的字体
let g:airline_powerline_fonts = 1
" " 开启tabline
let g:airline#extensions#tabline#enabled = 1
" " tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '
" " tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'
" " tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#hunks#enabled=1
" " 映射切换buffer的键位
nnoremap { :bp<CR>
nnoremap } :bn<CR>
nnoremap ]\ :bd<CR>
" Initialize plugin system
call plug#end()

"文件搜索"
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" 设置过滤不进行查找的后缀名 
" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|pyc)$' 
"end "



" NERDTree config"
map <F2> :NERDTreeToggle<CR>

autocmd BufWritePost $MYVIMRC source $MYVIMRC
