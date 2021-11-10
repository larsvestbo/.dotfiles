syntax on
set relativenumber
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
call plug#begin(stdpath('data') . '/plugged')
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'neovim/nvim-lspconfig'
	Plug 'ThePrimeagen/harpoon'
call plug#end()

let mapleader = " "
lua require('init')

nnoremap <leader>f :lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>g :lua require('telescope.builtin').live_grep()<CR>

nnoremap <leader>t :lua require('telescope.builtin').find_files({cwd = vim.fn.stdpath('config')..'/templates'})<CR>

" TK spesific
nnoremap <leader>tks :lua require('telescope.builtin').find_files({search_dirs = {"./TK_Kurs/TK_Portal/src"}})<CR>
nnoremap <leader>tkc :lua require('telescope.builtin').find_files({search_dirs = {"./TK_Kurs/TK_Portal/Controllers"}})<CR>
