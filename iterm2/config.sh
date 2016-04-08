#!/usr/bin/env bash

# get script dir
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

defaults write com.googlecode.iterm2 "PrefsCustomFolder" -string "${DIR}"
defaults write com.googlecode.iterm2 "LoadPrefsFromCustomFolder" -bool true

# set colorschem
open "${DIR}/base16-iterm2/base16-monokai.dark.256.itermcolors"
