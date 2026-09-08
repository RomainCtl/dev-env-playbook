### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

# Provide a simple prompt till the theme loads
PS1="READY >"
zinit ice wait'!' lucid
zinit ice depth=1; zinit light romkatv/powerlevel10k

zinit wait lucid light-mode for \
    OMZP::colored-man-pages/colored-man-pages.plugin.zsh \
    OMZP::colorize/colorize.plugin.zsh \
    OMZP::docker/docker.plugin.zsh \
    OMZP::extract/extract.plugin.zsh \
    OMZP::helm/helm.plugin.zsh \
    OMZP::mvn/mvn.plugin.zsh \
    OMZP::npm/npm.plugin.zsh \
    OMZP::oc/oc.plugin.zsh \
    OMZP::sdk/sdk.plugin.zsh \
    zdharma-continuum/history-search-multi-word \
atinit"zicompinit; zicdreplay" \
    zdharma-continuum/fast-syntax-highlighting \
atload"_zsh_autosuggest_start" \
    zsh-users/zsh-autosuggestions \
blockf atpull'zinit creinstal -q .' \
    zsh-users/zsh-completions \
as"completion" \
    OMZP::extract/_extract \
as"completion" \
    OMZP::yarn/_yarn
# as"completion" \
#     OMZP::nvm/_nvm \