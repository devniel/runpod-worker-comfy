#!/usr/bin/env bash

set -e

if [ -f "custom_nodes.txt" ]; then
    echo "runpod-worker-comfy: installing custom nodes"
else
    echo "runpod-worker-comfy: custom_nodes.txt not found, skipping custom node installation"
    exit 0
fi

# Read custom_nodes.txt line by line and install each node
while IFS= read -r node || [ -n "$node" ]; do
    # Skip empty lines
    if [ -z "$node" ]; then
        continue
    fi
    
    echo "runpod-worker-comfy: installing custom node: $node"
    comfy --workspace /comfyui node install "$node"
done < custom_nodes.txt

echo "runpod-worker-comfy: finished installing custom nodes"