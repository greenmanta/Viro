#install package
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("rprimer")

#additional package
BiocManager::install("Biostrings")




library(rprimer)
library(Biostrings)


runRprimerApp()