{ pkgs, ... }:
{

environment.systemPackages = with pkgs; [
        vim # ...
        (
          vim_configurable.customize {
              name = "vim-test";
              vimrcConfig.customRC = ''
                set encoding=utf-8
                set fileencoding=utf-8
                set fileencodings=utf-8
                set backspace=indent,eol,start
                set tabstop=4
                set softtabstop=0
                set shiftwidth=4
                set expandtab
                set number
                set hidden
                set hlsearch
                set incsearch
                set ignorecase
                set smartcase
                set bomb
                set binary
                set ttyfast
                set nobackup
                set noswapfile
                set fileformats=unix
                set showcmd
                set shell=/bin/sh
                let g:session_directory = "~/.vim/session"
                let g:session_autoload = "no"
                let g:session_autosave = "no"
                let g:session_command_aliases = 1
                syntax on
                set ruler
              '';
              vimrcConfig.vam.knownPlugins = pkgs.vimPlugins;
              vimrcConfig.vam.pluginDictionaries = [
              { names = [
                "nerdtree"
              ]; }
            ];
          }
        )
      ];
    }
