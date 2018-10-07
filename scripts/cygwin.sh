#Install cygwin package manager
lynx -source rawgit.com/transcode-open/apt-cyg/master/apt-cyg > apt-cyg
install apt-cyg /bin

#install wget
apt-cyg install wget

#install vim
apt-cyg install vim
