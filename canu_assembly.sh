#!/bin/bash
#SBATCH --job-name=j_canu
#SBATCH --partition=highmem_p
#SBATCH --ntasks=1
#SBATCH --mem=200gb
#SBATCH --time=168:00:00
#SBATCH --output=canu.%j.out
#SBATCH --error=canu.%j.err


cd /scratch/des65576/nanopore_seq_data/5130-2/gpu/

ml canu/2.2-GCCcore-8.3.0-Java-11

canu gridOptions=" --partition=batch --ntasks=20 --cpus-per-task=2 --time=168:00:00 " \
 -p stickleback -d /scratch/des65576/nanopore_seq_data/5130-2/gpu/assembly3/ \
 genomeSize=460m minInputCoverage=0 stopOnLowCoverage=0 \
 -nanopore-raw /scratch/des65576/nanopore_seq_data/5130-2/gpu/reads_full.fastq






