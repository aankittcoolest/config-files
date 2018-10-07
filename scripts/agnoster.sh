#Install terminator
yum install -y terminator

#Install oh-my-zsh
cd
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Install power fonts
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir .fonts
mv PowerlineSymbols.otf ~/.fonts/
mkdir -p .config/fontconfig/conf.d #if directory doesn't exists
fc-cache -vf ~/.fonts/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

#Install solarize theme
yum install -y dconf-cli

git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git ~/.solarized
cd ~/.solarized
./install.sh

##Remaining steps are manual steps to configure the ZSH
#vim ~/.zshrc
#ZSH_THEME="agnoster"
#eval `dircolors ~/.solarized/dircolors.ansi-dark`
