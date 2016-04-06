# Brew setup

## XCode
```
xcode-select --install
sudo xcodebuild -license
```

## Brew
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install bash zsh
sudo sh -c 'echo $(which bash) >> /etc/shells'
sudo sh -c 'echo $(which zsh) >> /etc/shells'
chsh -s $(which zsh)

brew install ack
brew install htop

brew install git
brew install python

brew install macvim
brew linkapps macvim
```
## Casks

```
brew tap caskroom/cask
brew cask install alfred iterm2
brew cask install spectacle flux
brew cask install dropbox keepassx
brew cask install istat-menus
```

### entertaiment

```
brew cask install spotify
```
