# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="gitster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  asdf
  bundler
  fzf
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="${EDITOR} ~/.zshrc"
alias ohmyzsh="${EDITOR} ~/.oh-my-zsh"
alias fconfig="${EDITOR} ~/.config/fish/"
alias i3config="${EDITOR} ~/.config/i3/"

# Check to see if the local settings file exists
if [[ -e ~/.local_config ]]; then
  source ~/.local_config
fi

# Defining colors
Default='default'
Green='#00af00'
Cyan3='#00d7af'
Red='#ff0000'
Yellow='#ffff00'
Blue='#0000ff'
White='#ffffff'
LightSeaGreen='#00afaf'
DeepSkyBlue1='#00afff'
Yellow3='#afd700'
GreenYellow='#afff00'
DeepPink3='#d70087'
LightSalmon1='#ffaf87'
Orange1='#ffaf00'
Grey35='#585858'
MediumPurple='#8787d7'
LightSkyBlue3='#87afd7'

# Setting up the highlighter
typeset -gA ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

# Defining different highlight colors
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=$Grey35,underline"
ZSH_HIGHLIGHT_STYLES[unknown-token]="fg=$Red",bold
ZSH_HIGHLIGHT_STYLES[reserved-word]="fg=$Yellow"
ZSH_HIGHLIGHT_STYLES[alias]="fg=$Default",bold
ZSH_HIGHLIGHT_STYLES[builtin]="fg=$LightSeaGreen",bold
ZSH_HIGHLIGHT_STYLES[function]="fg=$DeepSkyBlue1",bold
ZSH_HIGHLIGHT_STYLES[command]="fg=$Default",bold
ZSH_HIGHLIGHT_STYLES[precommand]="fg=$Default,bg=$Grey35",bold
ZSH_HIGHLIGHT_STYLES[commandseparator]="fg=$Orange1",bold
ZSH_HIGHLIGHT_STYLES[hashed-command]="fg=$Blue"
ZSH_HIGHLIGHT_STYLES[path]="fg=$GreenYellow",bold
ZSH_HIGHLIGHT_STYLES[path_prefix]="fg=$GreenYellow"
ZSH_HIGHLIGHT_STYLES[globbing]="fg=$Green"
ZSH_HIGHLIGHT_STYLES[history-expansion]="fg=$Cyan3"
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]="fg=$LightSkyBlue3"
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]="fg=$MediumPurple"
ZSH_HIGHLIGHT_STYLES[assign]="fg=$LightSalmon1"

# Check to see if there are iTerm2 integrations, and load them.
if [[ -f ~/.iterm2_shell_integration.zsh ]]; then
  source ~/.iterm2_shell_integration.zsh
fi
