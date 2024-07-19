#!/bin/bash

# Download and install Python 3.9
curl https://www.python.org/ftp/python/3.9.13/Python-3.9.13.tgz | tar xz
cd Python-3.9.13
./configure --enable-optimizations
make -j $(nproc)
sudo make altinstall

# Use the newly installed Python
export PATH="/usr/local/bin:$PATH"
python3.9 -m venv venv
source venv/bin/activate

# Upgrade pip and install requirements
python -m pip install --upgrade pip
pip install -r ../requirements.txt

# Go back to the project root
cd ..
