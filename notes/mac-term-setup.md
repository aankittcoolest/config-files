#install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#add brew to path
echo >> /Users/radhikamittal/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/radhikamittal/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

#install zsh
brew install zsh

#install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

