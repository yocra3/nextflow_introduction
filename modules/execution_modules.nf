process CREATE_FASTQ {
  
  input:
    val x 
  
  output:
    path ('*.fastq'), emit: fastq 
    val(x), emit: prefix
  
  script:
    """
  echo $x > ${x}.fastq
  """
}

process CREATE_BAM {
  
  input:
    path(fastq)
  
  output:
    path('*.bam')
  
  script:
    """
  cat $fastq > \$(basename $fastq .fastq).bam
  """
  
}

process CREATE_VCF {
  
  input:
    path(bam)
  
  output:
    path('*.vcf') 
  
  script:
    """
  cat $bam > \$(basename bam .bam).vcf
  """
  
}