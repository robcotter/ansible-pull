# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install python3

python3 -m ensurepip --upgrade

pip3 install ansible

export PATH="$PATH:$HOME/Library/Python/3.8/bin"

ansible-galaxy collection install community.general --ignore-certs

#  sudo ansible-pull -U https://github.com/robcotter/ansible-pull.git