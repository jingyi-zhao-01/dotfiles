# Login-shell env (runs once per login shell)

# pyenv: PATH wiring belongs here
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# (optional) other PATH-only things you want available everywhere
export PATH="$HOME/.local/bin:$PATH"
