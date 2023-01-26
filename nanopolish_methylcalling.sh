#!/bin/bash
#SBATCH --job-name=j_nanopolish
#SBATCH --partition=batch
#SBATCH --ntasks=8
#SBATCH --mem=8gb
#SBATCH --time=96:00:00
#SBATCH --output=nanopolish.%j.out
#SBATCH --error=nanopolish.%j.err

cd $SLURM_SUBMIT_DIR


ml nanopolish/0.13.3-foss-2020b-Python-3.8.6


nanopolish call-methylation -t 8 -r reads_full_combined.fastq -b reads-ref.sorted.sam -g sticklebackv5.fa -w "chrY:1-15,859,692" > methylation_calls_CHRY.tsv




