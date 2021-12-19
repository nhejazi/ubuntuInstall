# install Python and set up base environment via pyenv
pyenv install 3.9.7
pyenv virtualenv 3.9.7 base_env
pyenv global base_env

# upgrade pip first
python -m pip install --upgrade pip

# nicer displays of system information
python -m pip install glances bpytop

# fancy manpages and how-tos
python -m pip install tldr howdoi

# modern REPLs for Python and R, and Julia installer
python -m pip install ipython radian jill
