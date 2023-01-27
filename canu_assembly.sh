#!/bin/bash
#SBATCH --job-name=j_canu
#SBATCH --partition=highmem_p
#SBATCH --ntasks=1
#SBATCH --mem=256gb
#SBATCH --time=168:00:00
#SBATCH --output=canu.%j.out
#SBATCH --error=canu.%j.err


cd /scratch/des65576/nanopore_seq_data/5130-2/gpu/

ml canu/2.2-GCCcore-8.3.0-Java-11

canu gridOptions=" --partition=highmem_p --ntasks=1 --cpus-per-task=6 --time=168:00:00 " \
 -p stickleback -d /scratch/des65576/nanopore_seq_data/5130-2/gpu/assembly6/ \
 genomeSize=460m minInputCoverage=0 stopOnLowCoverage=0 \
mhapPipe=false purgeOverlaps=false saveOverlaps=true \
 -nanopore-raw /scratch/des65576/nanopore_seq_data/5130-2/gpu/reads_full.fastq
canu.sh (END)








