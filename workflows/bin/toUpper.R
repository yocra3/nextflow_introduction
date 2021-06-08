#! /opt/conda/envs/nextflow_r/bin/Rscript

## Capture arguments
args <- commandArgs(trailingOnly=TRUE)
path <- args[1]

word <- read.table(path)
upper <- toupper(word)
write(upper, stdout())
