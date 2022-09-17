export QT_QPA_PLATFORMTHEME="qt5ct"
export PATH="$HOME/.cargo/bin:$PATH"
export EDITOR=/usr/bin/nvim

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

export XDG_CURRENT_DESKTOP=Unity
