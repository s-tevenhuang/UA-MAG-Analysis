# Uric Acid Gene Cluster Analysis in Human-Associated Microbiomes

This repository contains all code and resources used to identify, analyze, and visualize uric acid-degrading microbial populations from over 340,000 metagenome-assembled genomes (MAGs) sourced from global microbiome catalogs (UHGG, GEM, KJI). This project expands the known phylogenetic and ecological landscape of uric acid degradation by combining genomic annotation, local sequence similarity searches, and KEGG-based functional enrichment analyses.

---

## 🚀 Project Overview

- **Goal**: To map the phylogenetic diversity, global distribution, and functional characteristics of uric acid–degrading microbes.
- **Scope**: Genome-scale analysis across >70 environments and 20+ microbial phyla.
- **Tech Stack**: Python, Bash, cblaster, Prokka, DIAMOND, GTDB-Tk, IQ-TREE, and KEGG pathway annotations.

---

## 📂 Directory Structure

```bash
.
├── data/                       # Input genome data (FASTA/GFF), cblaster session files, metadata
├── scripts/                   # All analysis scripts (Python + Bash)
│   ├── annotation/            # Prokka annotation + cleanup scripts
│   ├── cblaster/              # Search setup, database generation, session recomputation
│   ├── metadata_processing/   # MAG reformatting, metadata merging, quality filtering
│   ├── kegg_analysis/         # KEGG enrichment and functional trait analysis
│   └── visualization/         # Figure generation (e.g. heatmaps, trees, world maps)
├── results/                   # Output files: hit tables, KEGG matrices, figures
├── environment.yml            # Conda environment file with all dependencies
└── README.md                  # Project overview and setup instructions
