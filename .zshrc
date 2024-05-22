# variables for brew openssl
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/openssl@1.1/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@1.1/lib/pkgconfig"

# variables for python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
fi

# Increase zsh history size
export HISTFILESIZE="1000000000"
export HISTSIZE="1000000000"
export SAVEHIST="1000000000"

# Immediately save commmands to history file
setopt INC_APPEND_HISTORY

# Add timestamp
setopt EXTENDED_HISTORY
export HISTTIMEFORMAT="[%F %T]"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/isaiah/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/isaiah/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/isaiah/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/isaiah/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export AWS_ACCOUNT_ID=$(aws sts get-caller-identity --query 'Account' --output text --profile sso)

# Enable command completion for kubectl
source <(kubectl completion zsh)
