#!/bin/bash -e
#SBATCH --job-name=bash2
#SBATCH --output=/lustre/scratch/client/movian/research/users/vietdt11/prompt_cl/prompt_cl_2/vpt2.out
#SBATCH --error=/lustre/scratch/client/movian/research/users/vietdt11/prompt_cl/prompt_cl_2/vpt2.err
#SBATCH --nodes=1
#SBATCH --gpus-per-node=1
#SBATCH --mem-per-gpu=160G
#SBATCH --cpus-per-gpu=8
#SBATCH --partition=movianr


module purge
module load python/miniconda3/miniconda3
eval "$(conda shell.bash hook)"
conda activate /lustre/scratch/client/movian/research/users/vietdt11/prompt_cl/ovor_env

# export PYTHONUSERBASE=intentionally-disabled
# python -c "import site; print(site.USER_SITE)" intentionally-disabled/lib/python3.7/site-packages

cd /lustre/scratch/client/movian/research/users/vietdt11/prompt_cl/ovor


 bash experiments/imagenet-r.sh