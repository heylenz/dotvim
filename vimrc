set runtimepath=~/.vim,$VIMRUNTIME,~/.vim/after
" enable clipboard and other Win32 features
source $VIMRUNTIME/mswin.vim
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"""""""""""""""""""""""""""""""""""""""""""""""""""""

"Gvim base

"""""""""""""""""""""""""""""""""""""""""""""""""""""
language messages zh_CN.utf-8   
colorscheme molokai            
set guioptions-=T       
set guifont=DejaVu\ Sans\ mono\ 11
set noerrorbells       
set nobackup            
set linespace=0         
set shortmess=atI       
set novisualbell        
set scrolloff=3         
set mouse=a             
set selection=exclusive   
set selectmode=mouse,key  
set nu!   
set whichwrap+=<,>,h,l   
set completeopt=longest,menu  
set confirm  
set clipboard+=unnamed  
set showcmd
set sessionoptions+=resize 
set viminfo+=! 
set nocp 
set history=1024
set backspace=eol,start,indent 



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"window
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"if has("gui_running")
"   set showtabline=2
"    map! tn tabnew
"    nmap <C-c> :tabclose<CR>
"endif

" 
"function ShortTabLabel ()
"    let bufnrlist = tabpagebuflist (v:lnum)
"    let label = bufname (bufnrlist[tabpagewinnr (v:lnum) -1])
"    let filename = fnamemodify (label, ':t')
"    return filename
"endfunction

"set guitablabel=%{ShortTabLabel()}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set list
set listchars=tab:\|\ ,
set cindent shiftwidth=4
set autoindent shiftwidth=4

set cmdheight=1          " ÃüÁîÐÐ£šÔÚ×ŽÌ¬ÐÐÏÂ£©µÄžß¶È£¬Ä¬ÈÏÎª1£¬ÕâÀïÊÇ2  
set ruler                " ÓÒÏÂœÇÏÔÊŸ¹â±êÎ»ÖÃµÄ×ŽÌ¬ÐÐ  
set laststatus=2         " ¿ªÆô×ŽÌ¬ÀžÐÅÏ¢   
set wildmenu             " ÔöÇ¿Ä£ÊœÖÐµÄÃüÁîÐÐ×Ô¶¯Íê³É²Ù×÷   
" ×ŽÌ¬ÐÐÑÕÉ«
" highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLine guifg=SlateBlue guibg=White
highlight StatusLineNC guifg=Gray guibg=White

 

" ÎÒµÄ×ŽÌ¬ÐÐÏÔÊŸµÄÄÚÈÝ£š°üÀšÎÄŒþÀàÐÍºÍœâÂë£©
set statusline=[%n]%<%f%y%h%m%r%=[%b\ 0x%B]\ %l\ of\ %L,%c%V\ Page\ %N\ %P



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  

" ÎÄŒþÏà¹Ø  

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
set fenc=utf-8  
set encoding=utf-8      " ÉèÖÃvimµÄ¹€×÷±àÂëÎªutf-8£¬Èç¹ûÔŽÎÄŒþ²»ÊÇŽË±àÂë£¬vim»áœøÐÐ×ª»»ºóÏÔÊŸ  
set fileencoding=utf-8      " ÈÃvimÐÂœšÎÄŒþºÍ±£ŽæÎÄŒþÊ¹ÓÃutf-8±àÂë  
set fileencodings=utf-8,gbk,cp936,latin-1  
filetype on                  " Õì²âÎÄŒþÀàÐÍ  
filetype indent on               " Õë¶Ô²»Í¬µÄÎÄŒþÀàÐÍ²ÉÓÃ²»Í¬µÄËõœøžñÊœ  
filetype plugin on               " Õë¶Ô²»Í¬µÄÎÄŒþÀàÐÍŒÓÔØ¶ÔÓŠµÄ²åŒþ  
syntax on                    " Óï·šžßÁÁ  
filetype plugin indent on    " ÆôÓÃ×Ô¶¯²¹È«  
setlocal noswapfile  "²»Éú²úswapÎÄŒþ¡£
set fileformats=unix,dos
set autoread "ÎÄŒþ±»ÐÞžÄ×Ô¶¯ÔØÈë

" ÓÃÇ³É«žßÁÁµ±Ç°ÐÐ
if has("gui_running")
    autocmd InsertLeave * se nocul
    autocmd InsertEnter * se cul
endif

set foldmethod=indent 


" ÄÜ¹»Æ¯ÁÁµØÏÔÊŸ.NFOÎÄŒþ
set encoding=utf-8
function! SetFileEncodings(encodings)
    let b:myfileencodingsbak=&fileencodings
    let &fileencodings=a:encodings
endfunction
function! RestoreFileEncodings()
    let &fileencodings=b:myfileencodingsbak
    unlet b:myfileencodingsbak
endfunctio



" ÓÃ¿ÕžñŒüÀŽ¿ª¹ØÕÛµþ
set foldenable
set foldmethod=manual
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

 



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" ²éÕÒ  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
set hlsearch                 " ¿ªÆôžßÁÁÏÔÊŸœá¹û  
set nowrapscan               " ËÑË÷µœÎÄŒþÁœ¶ËÊ±²»ÖØÐÂËÑË÷  
set incsearch                " ¿ªÆôÊµÊ±ËÑË÷¹ŠÄÜ  

"""""""""""""""""""""""""""""""""""""""""""""""""""""
"ÉèÖÃ ultisnips
""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:ultisnips_python_style="doxygen" 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              CTagsµÄÉè¶š                                     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tags=tags;
let Tlist_Sort_Type = "name" " °ŽÕÕÃû³ÆÅÅÐò
let Tlist_Use_Right_Window = 1 " ÔÚÓÒ²àÏÔÊŸŽ°¿Ú
let Tlist_Compart_Format = 1 " Ñ¹Ëõ·œÊœ
let Tlist_Exist_OnlyWindow = 1 " Èç¹ûÖ»ÓÐÒ»žöbuffer£¬killŽ°¿ÚÒ²killµôbuffer
let Tlist_File_Fold_Auto_Close = 0 " ²»Òª¹Ø±ÕÆäËûÎÄŒþµÄtags
let Tlist_Enable_Fold_Column = 0 " ²»ÒªÏÔÊŸÕÛµþÊ÷
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            PYTHON Ïà¹ØµÄÉèÖÃ                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Python ÎÄŒþµÄÒ»°ãÉèÖÃ£¬±ÈÈç²»Òª tab µÈ
"ÉèÖÃ×Ô¶¯ËõœøÎª4,²åÈëÄ£ÊœÀï: ²åÈë <Tab> Ê±Ê¹ÓÃºÏÊÊÊýÁ¿µÄ¿Õžñ¡£
"Òª²åÈëÊµŒÊµÄÖÆ±í£¬¿ÉÓÃ CTRL-V<Tab> 
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4

"pydiction²åŒþÉèÖÃ(ÐèÒª°²×°pydiction²åŒþ)

"ÉèÖÃpythonµÄ×ÖµäÂ·Ÿ¶  j
"let g:pydiction_location = 'C:/Program Files/Vim/vimfiles/bundle/Pydiction/complete-dict'

"ÉèÖÃpydictµÄ²Ëµ¥žß¶È
let g:pydiction_menu_height = 10  

" ntŽò¿ªNERDTree [·Ç²åÈëÄ£Êœ]
map nt :NERDTree<CR>
" tlŽò¿ªTaglist [·Ç²åÈëÄ£Êœ]
map tl :Tlist<CR><c-l>

set laststatus=2
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*
map <Leader>g :call RopeGotoDefinition()<CR>
let ropevim_enable_shortcuts = 1
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_rope_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_builtin_funcs = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>


set completeopt=longest,menuone
function! OmniPopup(action)
     if pumvisible()
         if a:action == 'j'
             return "\<C-N>"
         elseif a:action == 'k'
             return "\<C-P>"
         endif
     endif
     return a:action
 endfunction

 

inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>



set nofoldenable


set t_Co=256



