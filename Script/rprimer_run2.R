


library(Biostrings)
library(DECIPHER)


hsv_seq <- readDNAStringSet("~/Desktop/R/Viro/Data/HSV.fasta")
dna = DNAStringSet(hsv_seq)
myAlignment <- readDNAMultipleAlignment(dna)

## install DECIPHER
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("DECIPHER")

dna <- AlignSeqs(hsv_seq)

