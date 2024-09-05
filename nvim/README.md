# Neovim Configuration
The focus for these Configuration is on simplicity yet pragmatic functionality.
The key idea here is not to clutter the Neovim UI. In order to achieve simplicity 
and powerful functionality the tools that are integrated

* Alacritty
* Tmux
* Neovim
* LSP
* Treesitter
* Fugitive and Gitgutter
* FZF and Telescope
* Formatting plugins
* Custom keymaps
* Psql

## Features
* Fuzy text search
* Fuzy file search
* File tree
* Code navigation
* Improved quick fix lists with preview
* Test runs
* Integration with Psql

## Prerequisites
The Prerequisites are installed by fedora/setup.sh automatically, they are listed here for documentation and reference purposes.
* lsp servers
    * rust-analyzer
    * clangd
    * gopls
    * lua-language-server
    * typescript-language-server
* neovim nodejs provide `npm install -g neovim`

## Installation
Run 
```
cd ~/dotfiles/nvim/ && sh setup-nvim.sh
```

## Future Improvements
1. Stability
2. Refinements
2. Better integration with Psql
2. Integration with docker and kubectl


## TODO
* Neovim configuration
    * snips to accelerate development

## Not TODO at this point
* Neovim configuration
    * fine tune lsp config
      - move lsp config to language specifc plugins
    * fine tune ctags
      - ctags should auto run
      - this should be project based
    * improve project based config
      - load project specifc config
    * fine tune treesitter based tools
      - things are slow at this point, so wait
    * test run logs, do I really need it?
      - if i need it in future, I can configure it
      - probably I should configure test reporters instead

## Ideas
* https://cedaei.com/posts/ideas-from-my-dev-setup-always-tmux/
* https://www.atlassian.com/git/tutorials/dotfiles
* https://www.daytona.io/dotfiles/ultimate-guide-to-dotfiles
* https://github.com/holman/dotfiles
* https://github.com/junegunn/fzf.vim/pulls
* https://github.com/junegunn/fzf.vim/issues
* https://github.com/jstemmer/gotags

## Other WIP  
https://github.com/ibhagwan/fzf-lua
https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/
https://neovim.io/doc/user/lua-guide.html
https://superuser.com/questions/410982/in-vim-how-can-i-quickly-switch-between-tabs
