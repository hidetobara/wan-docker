#!/bin/bash

git clone https://github.com/comfyanonymous/ComfyUI

# download models
# https://huggingface.co/Kijai/WanVideo_comfy/tree/main
# Text encoders to ComfyUI/models/text_encoders
# Transformer to ComfyUI/models/diffusion_models
# Vae to ComfyUI/models/vae

# custom_nodes
cd custom_nodes
git clone https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite
git clone https://github.com/kijai/ComfyUI-KJNodes
git clone https://github.com/kijai/ComfyUI-WanVideoWrapper
