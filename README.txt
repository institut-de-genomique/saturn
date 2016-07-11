This README describes a saturn running example

Please check the INSTALL.txt file for more information before the first running of saturn.
#################################################
saturn v1.0:
#################################################

Program: saturn
Saturn (v1.0): a fast software to predict the coverage from deeper sequencing
        --fq1        : illumina reads (R1) in fastQ format
        --fq2        : illumina reads (R2) in fastQ format (Optional)
        --nparts     : number of parts to split file
        --o        : Output directory, default is Saturn_date_pid
        --nb_proc    : Number of parallel task, default is 16
        --h           : help message


Command example to launch:
$ `pwd`/bin/saturn --fq1 AWK_DOSF_1_1_A5KR6.IND3_clean.10prc.fastq --fq2 AWK_DOSF_1_2_A5KR6.IND3_clean.10prc.fastq --nparts 10 --o saturn_example/

[ven mai 29 14:37:48 CEST 2015] Create output directory : saturn_example/
[ven mai 29 14:37:48 CEST 2015] Parallelization of jobs.
[ven mai 29 14:37:48 CEST 2015] Extracting results.
[ven mai 29 14:37:48 CEST 2015] Estimation of saturation.
[ven mai 29 14:37:48 CEST 2015] Ended...


'saturn_example/data/duplicates_data.csv' is a table containing the values obtained via fastx_estimate_duplicatedReads and used in input for neoreg which create a estimation of the saturation.
'saturn_example/output/' is the output/results of saturn (via neoreg)
