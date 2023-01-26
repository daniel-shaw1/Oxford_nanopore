#!/bin/bash
#SBATCH --job-name=j_minimap2
#SBATCH --partition=batch
#SBATCH --ntasks=20
#SBATCH --mem=8gb
#SBATCH --time=96:00:00
#SBATCH --output=nanopolish.%j.out
#SBATCH --error=nanopolish.%j.err

cd $SLURM_SUBMIT_DIR


ml nanopolish/0.13.3-foss-2020b-Python-3.8.6
nanopolish index -d /scratch/des65576/nanopore_seq_data/5130-2/no_sample/20220726_1505_MC-111650_FAR33854_5754081b/fast5_pass/ reads_full_combined.fastq






