Args <- commandArgs()
library(stringr)
library(magrittr)
library(BSgenome.Hsapiens.UCSC.hg19)

loc<-read.table(Args[6],stringsAsFactors = F,header=F)
seqs<-getSeq(x=BSgenome.Hsapiens.UCSC.hg19,
             names=loc$V1,start=loc$V2-20,end=loc$V2+20,
             strand=loc$V3,as.character=T)
names(seqs)<-paste(loc$V1,loc$V2,loc$V3,sep = "_")
substr(seqs,start = 21,stop = 21)<-"A"
sink("tmp.fasta")
for(i in 1:length(seqs)){
  cat(">");cat(names(seqs)[i]);cat("\n")
  cat(seqs[i]);cat("\n")
}
sink()


system("Rscript p6mA.R tmp.fasta")#In windows, change Rscript to Rscript.exe
