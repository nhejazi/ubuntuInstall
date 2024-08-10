# install pyenv for python environment management
curl https://pyenv.run | bash

# install Python and set up base environment via pyenv
pyenv install 3.12.0
pyenv virtualenv 3.12.0 base_env
pyenv global base_env

# upgrade pip first
python -m pip install --upgrade pip

# REPLs for Python and R
python -m pip install ipython radian
