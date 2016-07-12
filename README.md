# SATURN

Saturn is a tool for assessing the library saturation without alignment.
It allows a sequencing platform to assess the saturation,
to predict the yield of distinct reads from deeper sequencing and to adjust
the sequencing effort even without any reference genome.
Saturn uses an estimation of reads duplication and an equation model estimating
potential errors along with standard saturation.
As sequencing errors introduce new distinct reads and leads to overestimate
the complexity of a readset, we modelize them to predict the correct amount
of new sequences obtained by additionnal sequencing from a library.

Saturn is distributed open-source under CeCILL 
FREE SOFTWARE LICENSE. Check out http://www.cecill.info/
for more information about the contents of this license.

Saturn home on the web is http://www.genoscope.cns.fr/saturn


# RUNNING SATURN

        Usage : saturn --fq1 <fastq file 1> --fq2 <fastq file 2> --o <output directory> {Options}

# OPTION

        --fq1        : illumina reads (R1) in fastQ format
        --fq2        : illumina reads (R2) in fastQ format (Optional)
        --nparts     : number of parts to split file
        --o        : Output directory, default is Saturn_date_pid
        --nb_proc    : Number of parallel task, default is 16
        --h           : help message


# RESULT

Several directory are created in the output directory : 
        - files : contain sample files of increasing size generated from the input fastq files  
        - data : contain the output files of fastx_estimate_duplicatedReads on each sample and a file 'duplicates_data.csv' which sumarize level of duplication. This last file is used in input for neoreg which create a estimation of the saturation
        - output : contain results images and stats of saturn (via neoreg).


# PRE-REQUISITES

  - A Linux based operating system.
  - Binaries are provided for the following platform : Linux x86_64
  - Perl 5.8.0 or higher installed.
  - Perl Compress' Zlib module (http://search.cpan.org/~pmqs/IO-Compress-2.068/lib/Compress/Zlib.pm)
  - Perl GetOpt module (http://search.cpan.org/dist/Getopt-Long/)
  - R version 2.4.1 or higher installed.
  - g++ with gcc 4.1.2 or higher
  - parallel installed (working with ver. 20130922-1)


# INSTALLATION

  1. Download the current tarball archive from http://www.genoscope.cns.fr/saturn/download
  `wget http://www.genoscope.cns.fr/saturn/download/saturn_latest.tar.gz`
  2. Untar/unzip the archive
  `tar -zxvf saturn_latest.tar.gz`
  3. compile sources
  `cd saturn_latest`
  `make; make install`
  4. Modify if needed the Perl , R and sh interpreters that have been set to 
     /usr/bin/perl , /usr/bin/env Rscript, and /bin/bash


# ACKNOWLEDGMENTS

Stefan Engelen, Cyril Firmo, Amin Madoui and Jean-Marc Aury - Saturn's authors

This work was financially supported by the Genoscope, 
Institut de Genomique, CEA and Agence Nationale de la 
Recherche (ANR), and France Génomique (ANR-10-INBS-09-08).
