library(bio3d)
alignment <- read.fasta(file = "findagene.fst")
seqidentitymatrix <- seqidentity(alignment, normalize=TRUE, similarity=FALSE, ncore=1, nseg.scale=1)
heatmap(seqidentitymatrix, margins = c(10,10), cexRow = 0.8, cexCol = 0.8)


consensus_sequence <- consensus(alignment)
pdb.blast <- blast.pdb(consensus_sequence$seq)
plot.blast(pdb.blast) 
annotations <- c("6T2W_A","3LCD_A", "4HW7_A")
annotations_done <- pdb.annotate(annotations) 
