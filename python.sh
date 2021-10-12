# install and setup Python via pyenv
pyenv install python 3.9.7
pyenv virtualenv 3.9.7 base_env
pyenv global base_env

# upgrade pip first
python -m pip install --upgrade pip

# nicer displays of system information
python -m pip install glances bpytop

# fancy manpages
python -m pip tldr howdoi

# modern R repl
python -m pip install radian
