# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle python
antigen bundle git-auto-fetch
antigen bundle pip
antigen bundle fzf
antigen bundle tmux
antigen bundle yarn
antigen bundle thefuck
antigen bundle virtualenv
antigen bundle safe-paste
antigen bundle archlinux
antigen bundle ag
antigen bundle z

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle "MichaelAquilina/zsh-you-should-use"
antigen bundle "DarrinTisdale/zsh-aliases-exa"
antigen bundle lukechilds/zsh-nvm

#antigen theme agnoster
antigen theme romkatv/powerlevel10k

GIT_AUTO_FETCH_INTERVAL=120
ZSH_TMUX_AUTOSTART=false
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
NVM_AUTO_USE=true

antigen apply


source ~/.aliases


# PERL trash
PATH="/home/thomas/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/thomas/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/thomas/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/thomas/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/thomas/perl5"; export PERL_MM_OPT;

# More PATH fun
export PATH=$PATH:/home/thomas/.local/share/gem/ruby/3.0.0/bin
export PATH=$PATH:/usr/local/cuda/bin
export PATH="$HOME/.cargo/bin:$PATH"
export LD_LIBRARY_PATH=/usr/local/cuda/lib

export QT_STYLE_OVERRIDE=adwaita

# stolen from https://github.com/JeffChien/dotfiles/blob/master/zsh/.oh-my-zsh/custom/plugins/ranger/ranger.plugin.zsh
ranger-cd () {
    tempfile='/tmp/choosedir'
    ranger --choosedir="$tempfile" "${@:-$(pwd)}"
    test -f "$tempfile" &&
    if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
        cd -- "$(cat "$tempfile")"
    fi
    rm -f -- "$tempfile"
}
bindkey -s "^o" 'ranger-cd^M'


export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

