# p6mA
## Quick USAGE: 
Rscript p6mA.R \[MODE\] \[INPUT FASTA FILE\] \[OUTPUT FILE NAME\] \[CUTOFF\]

        MODE            : The model to test the input sequences; one of "Rice", "Fly", "Worm", "Human", "Compre", "Compre2"
        
        INPUT FASTA FILE: The input .fasta file. The sequences should be 41-bp and the A in 21st base
        
        OUTPUT FILE NAME: The output file name. Default: Output.result
        
        CUTOFF          : The cutoff of classifier. Sites whose prediction socre below it will be identified as non-6mA. Default: 0.5

        Attention: If you want to modify CUTOFF, please set the OUTPUT FILE NAME

Example: 

        Rscript p6mA.R Compre the/path/to/your/file.fasta test

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
                   \Models

The input file should be DNA FASTA format file, Each nucleotide should be one of in ('A', 'T', 'G', 'C'), 'N' is not permitted and it will cause error.

For any questions/comments, don't be hesitated to connect me by email: wanghaotian@mail.kiz.ac.cn OR 1haotian@live.cn
