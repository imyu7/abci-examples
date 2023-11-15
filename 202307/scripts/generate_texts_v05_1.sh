#!/bin/bash
#$ -l rt_G.large=6
#$ -j y
#$ -N generate_text
#$ -o logs/
#$ -cwd

source /etc/profile.d/modules.sh
module load python/3.11 cuda/11.7 cudnn/8.6
source .venv/bin/activate

export HF_HOME=/scratch/$(whoami)/.cache/huggingface/
export PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION=python

python src/generate_texts_llama_jplaw_v05_1.py --config_file config/config_generate_texts_llama_jplaw_v05_1.yaml