#!/bin/bash
curl https://www.python.org/ftp/python/3.9.7/Python-3.9.7.tgz | tar xz
cd Python-3.9.7
./configure --enable-optimizations
make -j 8
sudo make altinstall
cd ..
python3.9 -m pip install -r requirements.txt