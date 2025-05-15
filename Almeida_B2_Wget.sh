#!/bin/bash
#
#SBATCH --job-name=AlmeidaB2
#SBATCH --output=AlmeidaB2.out
#SBATCH --error=AlmeidaB2.err
#SBATCH --time=3-00:00:00       # e.g. 3 days
#SBATCH --cpus-per-task=4       # e.g. 16 CPUs
#SBATCH --mem=16               # e.g. 64 GB of RAM
#SBATCH --partition=ocf-hpc     # or your HPC partition
#SBATCH --nodelist=corruption   # or remove if not needed

#############################
# Record the start time
#############################
echo "Job started at $(date)"
start_time=$(date +%s)

#############################
# 1) Activate conda environment
#############################
source ~/miniconda3/etc/profile.d/conda.sh
conda activate AlmeidaCBLAST

#############################
# 0. Variables
#############################
LINK_FILE="AlmeidaB2_Links"
BATCH_FOLDER="Almeida_B2_UnAnnotated"
GFF_TO_GBK_SCRIPT="/home/s/st/stevenhuang/gff_to_gbk.py"  # or your conversion code path

#############################
# 1. Create folder, cd into it
#############################
mkdir -p "$BATCH_FOLDER"
cd "$BATCH_FOLDER" || exit 1

#############################
# 2. Download each .gff.gz link
#############################
echo "🔽 Downloading .gff.gz files from $LINK_FILE..."
while read -r link; do
  file_name=$(basename "$link")
  echo "   Downloading: $file_name"
  wget -q -O "$file_name" "$link"
done < "../$LINK_FILE"
echo "✅ Download phase done."

#############################
# Record the end time and print runtime
#############################
end_time=$(date +%s)
echo "Job ended at $(date)"
runtime=$((end_time - start_time))
echo "Total runtime: $runtime seconds"

echo "🎉 Pipeline completed for batch 2!"
