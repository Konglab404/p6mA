# p6mA
We recommend to use it in linux platform.

## Pre-install
The R language should be installed. The version we used is R 3.6.1

Before using p6mA, some R packages should be installed in R environment.

        install.packages("xgboost")
        install.packages("devtools")
        install.packages("magrittr")
        install.packages("stringr")
        install.packages("BiocManager")
        BiocManager::install("Biostrings")
        devtools::install_github("ritianjiang/RTFE")
        
After installing these packages, you can clone p6mA by:

        ###bash
        git clone git@github.com:Konglab404/p6mA.git
        cd ./p6mA

## Quick USAGE: 
Rscript p6mA.R \[MODE\] \[INPUT FASTA FILE\] \[OUTPUT FILE NAME\] \[CUTOFF\]
     
        INPUT FASTA FILE: The input .fasta file. The sequences should be 41-bp and the A in 21st base
        
        OUTPUT FILE NAME: The output file name. Default: Output.result
        



Example: 

        Rscript p6mA.R ./test.fasta

The input file should be in .fasta format, looks like:

'''
>Sequence_1
ATAGTGTAGTGAGCGTACGTAACGTGAAGTGAGTGAGTAGC
... ...

'''

The sequences in the file should be all 41bp length and the center posistions are always A.

####################################################################

## Note:

p6mA is a N^6-methyladenine predictor which is trained by multiple species' data. There are 6 built-in models and you can choose a proper one. If your data is some species not included in the 4 species (O. sativa, C. elegans, D. melanogaster and H. sapiens), you can choose the Compre or Compre2 model. Compre model is trained by comprehensive samples without redunction of dedundancy and Compre2 model is trained by non-redundant comprehensive dataset.

These R packages should be pre-installed:

    magrittr
    stringr
    Biostrings
    xgboost

    RTFE(installed by devtools' install.github() function from 'https://github.com/ritianjiang/RTFE')

Please put the p6mA.R script and Models folder in the same path, like:

    ~\Software\
              \p6mA\
                   \p6mA.R
                   \total_models

The input file should be DNA FASTA format file, Each nucleotide should be one of in ('A', 'T', 'G', 'C'), 'N' is not permitted and it will cause error.

For any questions/comments, don't be hesitated to connect me by email: wanghaotian@mail.kiz.ac.cn OR 1haotian@live.cn
