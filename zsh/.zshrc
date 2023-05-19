# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

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
# COMPLETION_WAITING_DOTS="true"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# avinash
eval "$(starship init zsh)"

alias ls="exa -la"
alias gs="git status"
alias p="cd \$(git rev-parse --show-toplevel)"
alias bat="batcat --theme='ansi-dark'"
alias pbcopy='xclip -selection c'
alias du="dust"
export EDITOR="nvim"
alias vimdiff='nvim -d'
alias nvi='nvr'

alias wezterm='flatpak run org.wezfurlong.wezterm'


alias ta="tmux a -t"
alias tls="tmux ls"
alias tns="tmux new -s"
alias lshosts="cat /etc/hosts | grep -v '#' |awk '{print \$2\" \(\"\$1\"\)\"}'"
#zle -N fzf-cd-widget
#bindkey '^n' fzf-cd-widget
alias cdp="cd \$(fd --max-depth 3 -H -t d \".git$\" ~/projects |fzf| sed -e \"s/\.git$//\")"
bindkey -s "\C-f" "cdp ^M"
bindkey -s '\C-g' 'lazygit ^M'
bindkey -s '\C-e' 'nvim ^M'

bindkey -s "\C-k" 'voker ^M'



vicd()
{
    dst=$(vifm --choose-dir -)
    if [ -z "$dst" ]; then
        echo 'Directory picking cancelled/failed'
        return 1
    fi
    cd "$dst"
    ls
}

bindkey -s '^o' 'vicd ^M'

FZF_TMUX=0

source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh
unset LD_LIBRARY_PATH

_gen_fzf_default_opts() {

local color00='#282a3a'
local color01='#3a3d4b'
local color02='#49483e'
local color03='#75715e'
local color04='#a59f85'
local color05='#f8f8f2'
local color06='#f5f4f1'
local color07='#f9f8f5'
local color08='#f92672'
local color09='#fd971f'
local color0A='#f4bf75'
local color0B='#a6e22e'
local color0C='#a1efe4'
local color0D='#66d9ef'
local color0E='#ae81ff'
local color0F='#cc6633'

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS"\
" --color=bg+:$color01,bg:$color00,spinner:$color0C,hl:$color0D"\
" --color=fg:$color04,header:$color0D,info:$color0A,pointer:$color0C"\
" --color=marker:$color0C,fg+:$color06,prompt:$color0A,hl+:$color0D"

}



_gen_fzf_default_opts


export PATH=/home/av6/bin:$PATH
export PATH=/home/av6/go/bin:$PATH
export PATH=/opt/firefox/firefox:$PATH
export PATH=~/.emacs.d/bin:$PATH

export WASMTIME_HOME="$HOME/.wasmtime"

export PATH="$WASMTIME_HOME/bin:$PATH"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export XDG_DATA_DIRS=$XDG_DATA_DIRS:/var/lib/flatpak/exports/share

