#!/bin/bash
echo "Updating system..."
sudo apt update && sudo apt upgrade -y

echo "Installing system dependencies..."
sudo apt install -y \
    git python3-pip python3-opencv \
    libatlas-base-dev libjasper-dev \
    libqtgui4 python3-pyqt5 \
    libilmbase-dev libopenexr-dev \
    libgstreamer1.0-dev tesseract-ocr

echo "System dependencies installed."
