# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# For tmuxline
export TERM=xterm-256color


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.


# This uses a powerline-like style
# Using a slightly tweaked version of the 'agnoster' theme that ships with oh-my-zsh.
# ZSH_THEME="agnoster-cust"
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"


# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"


# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git dirhistory jsontools)


source $ZSH/oh-my-zsh.sh

# User configuration

export EDITOR='vim'

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# completion file for tmuxinator
source ~/tmuxinator.zsh

# If there are specific environment settings, import them
if [ -f ~/.zshenv_specific ]; then
    source ~/.zshenv_specific
fi

# If there are shared environment settings, import them
if [ -f ~/.zshenv_shared ]; then
    source ~/.zshenv_shared
fi



# Generic, shared aliases file (from my github). Have this first so the specific one will override anything that overlaps
if [ -f ~/.bash_aliases_shared ]; then
    . ~/.bash_aliases_shared
fi

# specific aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


DEFAULT_USER=khampson

POWERLEVEL9K_SHORTEN_DIR_LENGTH=4

POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"

POWERLEVEL9K_VIRTUALENV_FOREGROUND="white"

# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir rbenv vcs)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv root_indicator background_jobs history time)



PATH="~/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="~/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/~/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"~/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=~/perl5"; export PERL_MM_OPT;

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "~/.gvm/bin/gvm-init.sh" ]] && source "~/.gvm/bin/gvm-init.sh"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="~/.sdkman"
[[ -s "~/.sdkman/bin/sdkman-init.sh" ]] && source "~/.sdkman/bin/sdkman-init.sh"

