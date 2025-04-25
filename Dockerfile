#FROM pytorch/pytorch:2.5.1-cuda12.4-cudnn9-runtime
FROM pytorch/pytorch:2.5.1-cuda11.8-cudnn9-runtime
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && \
	apt-get install -y curl python3-pip git vim less wget libgl1-mesa-dev libglib2.0-0 && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

WORKDIR /app
RUN pip3 install torchsde \
    comfyui-frontend-package==1.16.9 \
    comfyui-workflow-templates==0.1.3 \
    torchsde \
    numpy>=1.25.0 \
    einops \
    transformers>=4.28.1 \
    tokenizers>=0.13.3 \
    sentencepiece \
    safetensors>=0.4.2 \
    aiohttp>=3.11.8 \
    yarl>=1.18.0 \
    pyyaml \
    Pillow \
    scipy \
    tqdm \
    psutil \
    opencv-python kornia spandrel \
    ftfy accelerate diffusers protobuf imageio_ffmpeg av>=14.1.0 sageattention matplotlib

COPY ComfyUI /app/ComfyUI
