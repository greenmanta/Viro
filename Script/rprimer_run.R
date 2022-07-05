#install package
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("rprimer")

#additional package
BiocManager::install("Biostrings")


#load the package

library(rprimer)
library(Biostrings)

#Run the App 
runRprimerApp()
