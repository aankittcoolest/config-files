sudo yum install -y zsh
sudo yum install -y git-core 

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`
shutdown -r 0
