set runtimepath+=~/.config/nvim/
runtime! vim-plug/plug.vim

call plug#begin('~/.config/nvim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'itchyny/lightline.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'kana/vim-textobj-user'
Plug 'junegunn/vim-easy-align'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-buffer.vim'
Plug 'prabirshrestha/asyncomplete-file.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/asyncomplete-tags.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'ryanolsonx/vim-lsp-typescript'
Plug 'mattn/vim-goimports'
Plug 'ludovicchabant/vim-gutentags'

Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'slim-template/vim-slim', { 'for': 'slim' }
Plug 'puppetlabs/puppet-syntax-vim', { 'for': 'puppet' }
Plug 'vim-scripts/nginx.vim', { 'for': 'nginx' }
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'tpope/vim-haml', { 'for': 'haml' }
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }
Plug 'vim-scripts/ruby-matchit', { 'for': 'ruby' }
Plug 'tpope/vim-endwise', { 'for': 'ruby' }
Plug 'rhysd/vim-textobj-ruby', { 'for': 'ruby' }
Plug 'hashivim/vim-terraform', { 'for': 'terraform' }
Plug 'tmux-plugins/vim-tmux', { 'for': 'tmux' }
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'mrk21/yaml-vim', { 'for': 'yaml' }
Plug 'google/vim-jsonnet', { 'for': ['jsonnet', 'libsonnet'] }
Plug 'leafgarland/typescript-vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'peitalin/vim-jsx-typescript'
Plug 'jparise/vim-graphql', { 'for': 'graphql' }

call plug#end()

syntax on
filetype indent plugin on

runtime! userautoload/*.vim

set hidden
