:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a


call plug#begin()

Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/ryanoasis/vim-devicons'  " dev icons
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'https://github.com/jiangmiao/auto-pairs' " auto closing parans
Plug 'https://github.com/terryma/vim-multiple-cursors' " multiple cursors
Plug 'https://github.com/MaxMEllon/vim-jsx-pretty' " react beat. 
Plug 'pangloss/vim-javascript' " javascript highlight
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'sbdchd/neoformat'

call plug#end()

set encoding=UTF-8

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nnoremap <C-z> diw<CR>
nnoremap <C-s> :Neoformat<CR>

:colorscheme alduin 

let NERDTreeShowHidden=1


inoremap <expr> <Enter> pumvisible() ? coc#_select_confirm() : "<Enter>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
