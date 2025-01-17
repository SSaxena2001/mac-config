set fish_greeting "Welcome Acurite!"

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lls "ll -A"
alias g git
command -qv nvim && alias vim nvim

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

#Android
set -gx PATH ~/Library/Android/sdk/platform-tools $PATH
set -gx PATH ~/Library/Android/sdk/emulator $PATH
set -gx PATH ~/Library/Android/sdk/tools $PATH
set -gx PATH ~/Library/Android/sdk/tools/bin $PATH

set -gx ANDROID_HOME ~/Library/Android/sdk

if type -q eza
    alias ll "eza -l -g --icons"
    alias lls "ll -a"
end

set -g FZF_PREVIEW_FILE_CMD "bat --style=numbers --color=always --line-range :500"
set -g FZF_LEGACY_KEYBINDINGS 0

# pnpm
set -gx PNPM_HOME "/Users/suvigya1402/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
