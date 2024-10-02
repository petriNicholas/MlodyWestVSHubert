#!/bin/bash

if ! command -v brew &> /dev/null; then
    echo "Homebrew nie jest zainstalowany. Instalowanie Homebrew..."

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    echo "Homebrew jest już zainstalowany."
fi

if ! command -v python3 &> /dev/null; then
    echo "Python nie jest zainstalowany. Instalowanie Pythona..."
    
    brew install python
else
    echo "Python jest już zainstalowany."
fi

python3 --version

pip3 install openpyxl
pip3 install requests
pip3 install time
pip3 install openpyxl.chart
pip3 install bs4

brew install pyinstaller

pyinstaller --onefile --icon=westvshubert_QYO_1.ico WestVSHubert.py

mv WestVSHubertBAZA.xlsx ./dist/