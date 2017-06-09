### This scripts is running for GAPIT ###
# GAPIT - Genomic Association and Prediction Integrated Tool
# Designed by Zhiwu Zhang
# Written by Zhiwu Zhang, Alex Lipka and Feng Tian
# Last update: October 25, 2014

#Install packages (Do this section only for new installation of R)
#-------------------------------------------------------------------------------
source("http://www.bioconductor.org/biocLite.R") 
biocLite("multtest")
install.packages("gplots")
#Step 0: Import library and GAPIT functions run this section each time to start R)
#######################################################################################
library('MASS') # required for ginv
library(multtest)
library(gplots)
library(scatterplot3d)
library(compiler) #required for cmpfun
source("http://www.zzlab.net/GAPIT/emma.txt")

## Testing ## 
setwd("/mnt/01/hungying/Xiaohaplotype/MLM/tt")
geno <- read.delim("/mnt/01/hungying/RD_GWAS/SNP0323/GAPIT_cap_impute.hmp.txt", head = F)
phenoG <- read.delim("/mnt/01/hungying/RD_GWAS/Pheno0323/GAPIT_pheno.txt", header = T, sep="\t")
GAPIT.test <- GAPIT(
  Y=phenoG[,c(1,23)],  #Depend on which Phenotype
  G=geno,
  PCA.total=3
)
