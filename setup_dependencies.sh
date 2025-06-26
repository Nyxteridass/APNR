#!/bin/bash
echo "Updating system..."
sudo apt update && sudo apt upgrade -y

echo "Installing system-level dependencies..."
sudo apt install -y \
    python3 python3-pip python3-opencv \
    libatlas-base-dev libqt5gui5 \
    python3-pyqt5 \
    libilmbase-dev libopenexr-dev \
    libgstreamer1.0-dev tesseract-ocr git

echo "System dependencies installed."

# Check if requirements.txt exists
if [ -f "requirements.txt" ]; then
    echo "Installing Python packages from requirements.txt..."
    pip3 install --upgrade pip
    pip3 install -r requirements.txt
    echo "Python packages installed."
else
    echo "File named : requirements.txt not found. Skipping pip installation."
fi
