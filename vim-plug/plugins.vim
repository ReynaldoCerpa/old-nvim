if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
    call plug#begin('~/.config/nvim/autoload/plugged')

    "Easymotion to move quickly between lines"
    Plug 'easymotion/vim-easymotion'
    "Treesitter"
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'

    "Telescope"
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    "Airline"
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Plug in to make html development faster"
    Plug 'mattn/emmet-vim'
    Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
    "File Explorer"
    Plug 'scrooloose/NERDTree'
    Plug 'ryanoasis/vim-devicons'
    "Nerd commenter"
    Plug 'preservim/nerdcommenter'
    "Find differences in file with git repo"
    Plug 'airblade/vim-gitgutter' 
    " fugitive to make git operations efficiently and painless"
    Plug 'tpope/vim-fugitive'
    " fuzzyfinder"
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'andymass/vim-matchup'
    " IndentLine for easier interpretation of code blocks"
    Plug 'Yggdroot/indentLine'
    " Colorscheme plugin"
    Plug 'rose-pine/neovim'
    Plug 'sainnhe/gruvbox-material'
    Plug 'doums/darcula'
    Plug 'morhetz/gruvbox'
    Plug 'nanotech/jellybeans.vim'
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'dunstontc/vim-vscode-theme'
    Plug 'chriskempson/base16-vim'
    Plug 'folke/tokyonight.nvim'
    Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'branch': 'release/0.x'
  \ }
    call plug#end()
