# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme robbyrussell

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler
set fish_plugins autojump brew bundler jump rails rbenv rvm sublime tmux vi-mode vundle

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

#set -x JAVA_HOME (/usr/libexec/java_home -v 1.8)
set -x SBT_OPTS "-XX:+CMSClassUnloadingEnabled -XX:PermSize=1024M -XX:MaxPermSize=2048M"

set -x PATH $PATH ~/.cabal/bin

# Add GHC 7.8.3 to the PATH, via http://ghcformacosx.github.io/
if test -f /Applications/ghc-7.8.3.app
    set -x GHC_DOT_APP "/Applications/ghc-7.8.3.app"
    set -x PATH $PATH "$GHC_DOT_APP/Contents/bin"
end
set -gx PATH ~/.cabal/bin /opt/cabal/1.20/bin /opt/ghc/7.8.3/bin /opt/happy/1.19.4/bin /opt/alex/3.1.3/bin $PATH
