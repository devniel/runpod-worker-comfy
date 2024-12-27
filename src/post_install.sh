#!/usr/bin/env bash

# Create directory if it doesn't exist
mkdir -p /comfyui/custom_nodes/ComfyUI_LayerStyle/RMBG-1.4

# Download model and save to specified path
wget -O /comfyui/custom_nodes/ComfyUI_LayerStyle/RMBG-1.4/model.pth https://huggingface.co/briaai/RMBG-1.4/resolve/main/model.pth?download=true