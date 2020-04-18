#!/bin/bash

# aws-cli
python -m pip install awscli

# homebrew (for sam-cli)
git clone https://github.com/Homebrew/brew /home/linuxbrew/.linuxbrew/Homebrew
mkdir /home/linuxbrew/.linuxbrew/bin
ln -s /home/linuxbrew/.linuxbrew/Homebrew/bin/brew /home/linuxbrew/.linuxbrew/bin/

# envvar for next boot
echo "eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" >> ~/.bashrc
echo "export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH" >> ~/.bashrc

# envvar for now
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# sam-cli
brew tap aws/tap
brew install aws-sam-cli