#!/bin/bash

#SBATCH --job-name=pnn
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=2
#SBATCH --mem=20GB
#SBATCH --time=20:00:00
#SBATCH --output=pnn_%j.out

module purge
module load tensorflow/python3.5/1.4.0
source /home/mvp307/keras/bin/activate
python deep-bridge-bidding.py train pnn --load-model
