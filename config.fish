# Add to PATH
#set PATH $HOME/bin/ $PATH

# Set environment variables
setenv EDITOR "nano"
setenv GIT_EDITOR "nano"
setenv GEM_EDITOR "nano"

# Autoload some functions
. "$HOME/.config/fish/functions/aliases.fish"

if test -e "$HOME/.config/fish/functions/work.fish"
    . "$HOME/.config/fish/functions/work.fish"
end
