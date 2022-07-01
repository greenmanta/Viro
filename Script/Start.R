if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("openPrimeR")
library(runRPrimerApp)

BiocManager::install("openPrimeRui")

install.packages("shiny")

BiocManager::install("Biostrings")
