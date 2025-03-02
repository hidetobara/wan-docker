FROM pytorch/pytorch:2.5.1-cuda12.4-cudnn9-runtime
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && \
	apt-get install -y curl python3-pip git vim less wget libgl1-mesa-dev libglib2.0-0 && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

WORKDIR /app
RUN pip3 install torchsde \
    einops \
    "transformers>=4.28.1" \
    "tokenizers>=0.13.3" \
    sentencepiece \
    "safetensors>=0.4.2" \
    aiohttp \
    pyyaml \
    Pillow \
    scipy \
    tqdm \
    psutil \
    "kornia>=0.7.1" \
    spandrel \
    soundfile \
    opencv-python \
    GitPython \ 
    ftfy accelerate diffusers protobuf imageio_ffmpeg av sageattention

COPY ComfyUI /app/ComfyUI
