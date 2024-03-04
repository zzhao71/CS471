#!/bin/bash

#SBATCH --partition=mig_class
#SBATCH --gres=gpu:1
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=2:00:0
#SBATCH --job-name="CS 601.471/671 homework5"
#SBATCH --output=slurm-%j.out
#SBATCH --mem=16G

module load anaconda
source ~/.bashrc
conda activate nlp # activate the Python environment

# runs your code
python -u main.py
