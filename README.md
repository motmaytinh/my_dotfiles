# My dotfiles

My setting for zsh, vim, git, etc.

# Manual install stuff

* Visual studio code: Ubuntu store
  * `ext install CoenraadS.bracket-pair-colorizer-2` 
  * `ext install TabNine.tabnine-vscode`
  * [Fira Code](https://github.com/tonsky/FiraCode/wiki/VS-Code-Instructions)
  * If `code` command doesn't work, do this: `sudo ln -s /snap/bin/code /usr/local/bin/code`

* Tilix:
  * Install from Ubuntu store
  * [Fix vte error](https://gnunn1.github.io/tilix-web/manual/vteconfig/)
  * Set Tilix as default terminal: `sudo update-alternatives --config x-terminal-emulator`

* Add ssh key:
  * Copy id_rsa to `/home/you/.ssh/id_rsa`
  * [Error permissions are too open](https://stackoverflow.com/questions/9270734/ssh-permissions-are-too-open-error)

* vifm: `sudo apt install vifm`
* fzf: `sudo apt install fzf`

* [Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
* [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
* [fasd](https://github.com/clvv/fasd/wiki/Installing-via-Package-Managers#debian--ubuntu)
  * Remember to set `eval` in rc file
* [Zsh autosuggeston](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)
* [Zsh syntax highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh)
* [Powerlevel10k setup](https://github.com/romkatv/powerlevel10k#oh-my-zsh)
* [Hack font for programming](https://sourcefoundry.org/hack/)
* [Ibus Bamboo](https://github.com/BambooEngine/ibus-bamboo#ubuntu-v%C3%A0-c%C3%A1c-distro-t%C6%B0%C6%A1ng-t%E1%BB%B1)

* pbcopy: `sudo apt install xclip xsel`
  * `alias pbcopy='xclip -selection clipboard`
  * `alias pbpaste='xclip -selection clipboard -o`

* Nautilus shortcut: Settings > Shortcuts > Home > Win + E
