# k8-align
Align FASTQ and deduplicate bams in kubernetes.

Note: k8-align is not used for alignment in [pipeline5](https://github.com/hartwigmedical/pipeline5). 
The results of k8-align are not guaranteed to be identical to the bams created by pipeline5.

The FASTQ file names need to contain `_R1_` or `_R2_` to show whether they are read 1 or 2. 
All read 1 FASTQ files need to have a corresponding read 2 FASTQ file and vice versa.
A read 1 FASTQ file corresponds to a read 2 FASTQ file when the only difference in their file names is the `_R1_` vs `_R2_`. 

This is a WIP.