# Plugins
source $HOME/.config/zplug
zplug "zplug/zplug", hook-build:"zplug --self-manage"

zstyle ':prezto:module:*' color 'yes'
zstyle ':prezto:module:*' case-sensitive 'no'
zstyle ':prezto:module:prompt' theme sorin
zstyle ':prezto:module:editor' key-bindings 'vi'

zplug "modules/bundler", from:prezto
zplug "modules/directory", from:prezto
zplug "modules/editor", from:prezto
zplug "modules/git", from:prezto
zplug "modules/history", from:prezto
zplug "modules/spectrum", from:prezto
zplug "modules/homebrew", from:prezto
zplug 'modules/pacman', from:prezto
zplug "modules/node", from:prezto

zplug "modules/prompt", from:prezto
zplug "modules/utility", from:prezto
zplug "modules/completion", from:prezto, defer:1

zplug "modules/syntax-highlighting", from:prezto, defer:2
zplug "modules/history-substring-search", from:prezto, defer:3

zplug "b4b4r07/enhancd", use:init.sh
zplug "supercrabtree/k"
zplug "plugins/taskwarrior", from:oh-my-zsh
zplug "plugins/ng", from:oh-my-zsh

if ! zplug check; then
    zplug install
fi

zplug load

# alias and other things

[ -x "$(command -v fasd)" ] && eval "$(fasd --init auto)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias v='f -e nvim'
alias vim="nvim"
alias mutt="neomutt"

SEARCH_LIMIT=3
alias wiki="googler -n $SEARCH_LIMIT -w wikipedia.org"
alias amazon="googler -n $SEARCH_LIMIT -w amazon.co.uk"
alias github="googler -n $SEARCH_LIMIT -w github.com"
[ -x "$(command -v xdg-open)" ] && alias open="xdg-open"

export LANG=en_US.UTF-8
export PATH=$PATH:$HOME/.local/bin:$HOME/.luarocks/bin
export VISUAL='nvim'
export EDITOR='nvim'
export BROWSER='chromium'
export PAGER='less'
export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# use pure theme
bindkey '^ ' autosuggest-accept
