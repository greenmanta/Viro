# Specify a FASTA file containing the templates:
fasta.file <- system.file("extdata", "IMGT_data", "templates", 
                          "Homo_sapiens_IGH_functional_exon.fasta", package = "openPrimeR")
# Load the template sequences from 'fasta.file'
seq.df.simple <- read_templates(fasta.file)

seq.df.simple$Header[1]
#> [1] ">M99641|IGHV1-18*01|Homo sapiens|F|L-PART1+V-EXON|47..92+177..483|353 nt|1| | | | |353+0=353| | |"


hdr.structure <- c("ACCESSION", "GROUP", "SPECIES", "FUNCTION")
seq.df <- read_templates(fasta.file, hdr.structure, delim = "|", id.column = "GROUP")

# Show the loaded metadata for the first template
c(seq.df$Accession[1], seq.df$Group[1], seq.df$Species[1], seq.df$Function[1])
#> [1] "M99641"       "IGHV1"        "Homo sapiens" "F"
# Show the ID (group) of the first template
seq.df$ID[1]
#> [1] "IGHV1-18*01"
#> 
#> # Show the binding region of the first template for forward primers
seq.df$Allowed_fw[1]
#> [1] "atggactggacctggagcatccttttcttg"
# Show the corresponding interval in the templates
c(seq.df$Allowed_Start_fw[1], seq.df$Allowed_End_fw[1])
#> [1]  1 30
# Show the binding region of the first template for reverse primers
seq.df$Allowed_rev[1]
#> [1] "cgacacggccgtgtattactgtgcgagaga"
# Show the corresponding interval in the templates
c(seq.df$Allowed_Start_rev[1], seq.df$Allowed_End_rev[1])
#> [1] 324 353
#> 
#> # Show the binding region of the first template for forward primers
seq.df$Allowed_fw[1]
#> [1] "atggactggacctggagcatccttttcttg"
# Show the corresponding interval in the templates
c(seq.df$Allowed_Start_fw[1], seq.df$Allowed_End_fw[1])
#> [1]  1 30
# Show the binding region of the first template for reverse primers
seq.df$Allowed_rev[1]
#> [1] "cgacacggccgtgtattactgtgcgagaga"
# Show the corresponding interval in the templates
c(seq.df$Allowed_Start_rev[1], seq.df$Allowed_End_rev[1])
#> [1] 324 353
#> 
#> 
#> # Show the new forward binding region (first 50 bases)
template.df.uni$Allowed_fw[1]
#> [1] "atggactggacctggagcatccttttcttggtggcagcaccaacaggtgc"
# Show the new reverse binding region (last 40 bases)
template.df.uni$Allowed_rev[1]
#> [1] "tgagatctgacgacacggccgtgtattactgtgcgagaga"
#> 
#> 
#> 
#> l.fasta.file <- system.file("extdata", "IMGT_data", "templates", 
"Homo_sapiens_IGH_functional_leader.fasta", package = "openPrimeR")
template.df <- assign_binding_regions(seq.df, fw = l.fasta.file, rev = NULL)
