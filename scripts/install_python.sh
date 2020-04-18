#!/bin/bash

# set 3.7 as default version
update-alternatives --install /usr/bin/python python /usr/local/bin/python3.7 99

# upgrade pip
python -m pip install --upgrade pip
