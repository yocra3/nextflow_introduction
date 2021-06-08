#!/usr/bin/env nextflow

// Execution 1. Exemplify how nextflow executes the tasks. Processes names do not
// reflect the real task.

params.file_names  = ['sample1', 'sample2']
file_names = Channel.fromList(params.file_names)

process createFastq {
  
  input:
    val x from file_names
  
  output:
    file '*.fastq' into fastq
  
  script:
  """
  echo $x > ${x}.fastq
  """
}

process createBam {
  
  input:
  file(fastq) from fastq
  
  output:
  file('*.bam') into bam
  
  script:
  """
  cat $fastq > \$(basename $fastq .fastq).bam
  """

}

process createVCF {
  
  input:
  file(bam) from bam
  
  output:
  file('*.vcf') into vcf
  
  script:
  """
  cat $bam > \$(basename bam .bam).vcf
  """

}