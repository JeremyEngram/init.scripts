#!/bin/bash

figlet "ShDoc"

sudo apt install gawk
git clone --recursive https://github.com/reconquest/shdoc
cd shdoc
sudo make install