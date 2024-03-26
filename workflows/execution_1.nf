#!/usr/bin/env nextflow

// Execution 1. Exemplify how nextflow executes the tasks. Processes names do not
// reflect the real task.

params.file_names  = ['sample1', 'sample2']
file_names = Channel.fromList(params.file_names)

process createFastq {
  
  input:
    val x 
  
  output:
    file '*.fastq' 
  
  script:
  """
  echo $x > ${x}.fastq
  """
}

process createBam {
  
  input:
  file(fastq) 
  
  output:
  file('*.bam') 
  
  script:
  """
  cat $fastq > \$(basename $fastq .fastq).bam
  """

}

process createVCF {
  
  input:
  file(bam) 
  
  output:
  file('*.vcf') 
  
  script:
  """
  cat $bam > \$(basename bam .bam).vcf
  """

}

workflow{
  fastq_ch = createFastq(file_names)
  bam_ch = createBam(fastq_ch)
  vcf_ch = createVCF(bam_ch)

}