#!/bin/bash
#SBATCH --partition=gpu_30d_p
#SBATCH --job-name=guppyjobname
#SBATCH --gres=gpu:P100:1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=200:00:00
#SBATCH --mem=50G

cd /scratch/des65576/nanopore_seq_data/

ml ont-guppy/4.4.2-GPU

guppy_basecaller -i /scratch/des65576/nanopore_seq_data/5130-2/no_sample/20220726_1505_MC-111650_FAR33854_5754081b/fast5_pass/ -s /scratch/des65576/nanopore_seq_data/5130-2/gpu/ -c dna_r9.4.1$





