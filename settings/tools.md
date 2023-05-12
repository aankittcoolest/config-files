# Install softwares

```
# Install brew on mac
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install iterm
brew install iterm2 --cask

# Install visual studio code
brew install visual-studio-code --cask

# Install docker
brew install docker --cask

# Install node
brew install node

# Install vault
brew install vault

# Install tree
brew install tree

# Install zsh
brew install zsh
echo 'export PATH="/usr/local/opt/ncurses/bin:$PATH"' >> ~/.bash_profile

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install powerline10k and restart iterm to configure
brew install gnu-sed
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
gsed -i 's/ZSH_THEME.*/ZSH_THEME="powerlevel10k\/powerlevel10k"/' .zshrc

# Install fuzzy finder
brew install fzf

cat <<EOT >> ~/.fzf.zsh

# FZF related exports
export FZF_DEFAULT_OPTS='--multi --no-height --extended'
export FZF_DEFAULT_OPTS='--bind alt-j:down,alt-k:up'

export FZF_DEFAULT_OPTS="
--layout=reverse
--info=inline
--height=80%
--multi
--preview-window=:hidden
--preview '([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200'
--color='hl:148,hl+:154,pointer:032,marker:010,bg+:237,gutter:008'
--prompt='∼ ' --pointer='▶' --marker='✓'
--bind '?:toggle-preview'
--bind 'ctrl-a:select-all'
--bind 'ctrl-y:execute-silent(echo {+} | pbcopy)'
--bind 'ctrl-e:execute(echo {+} | xargs -o vim)'
--bind 'ctrl-v:execute(code {+})'
--bind alt-j:down,alt-k:up
"
EOT

# Install fish shell
brew install fish
curl -L https://get.oh-my.fish | fish

# Fix powerline themes for vscode
git clone https://github.com/abertsch/Menlo-for-Powerline.git
mv Menlo-for-Powerline/*.ttf ~/Library/Fonts
rm -rf Menlo-for-Powerline

# Fix continous key movement issue
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Install phpstorm
brew install phpstorm --cask

# Install config files
git clone https://github.com/aankittcoolest/config-files.git

# Confifgure emacs
brew install emacs --cask
echo "alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'" >> ~/.bash_profile
ln -s  config-files/settings/emacs/ .emacs.d
source ~/.bash_profile

# Install vim
rm -rf .spf13-vim-3
curl http://j.mp/spf13-vim3 -L -o - | sh
rm -rf .vimrc.before.local
ln -s config-files/vim/.vimrc.before.local .vimrc.before.local

# Install powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# Install wget
brew install wget

# Install python
brew install python@3.10

# Install go
brew install go

# Install rust
curl https://sh.rustup.rs -sSf | sh

# Install slack
brew install --cask slack

# Install gpg
brew install gpg
```

