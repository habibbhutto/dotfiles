# dotfiles
Development setup and configuration files

## TODO
* neovim configuration    
    * test run logs, do I really need it?
    * fine tune ctags
      - ctags should auto run
      - this should be project based
    * improve project based config
      - the lsp config is fixed
      - load project specifc config
      - what else needs to be done?
    * fine tune lsp config
      - the lsp config is fixed
      - move lsp config to language specifc plugins
      - fix cmp showing double entries when listing files
    * fine tune treesitter
      - for now it seems like working
      - outline would be useful
    * theme changing mechanism
      - make it super easy to change themes across the tools
      - configure light and black themes
      - switch them based on system theme or at will
      - reactive to system style

## k8s dev environment
https://kardinal.dev/

## Ideas
* https://cedaei.com/posts/ideas-from-my-dev-setup-always-tmux/
* https://www.atlassian.com/git/tutorials/dotfiles
* https://www.daytona.io/dotfiles/ultimate-guide-to-dotfiles
* https://github.com/holman/dotfiles
* Try Ptyxis terminal, though I seem to be happy with Alacritty + Tmux setup
```bash
flatpak install --user --from https://nightly.gnome.org/repo/appstream/org.gnome.Ptyxis.Devel.flatpakref
```
