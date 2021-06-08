#!/usr/bin/env nextflow

// Exemplify combination of inputs

println("Multiple input channels - different length")

process multi_diff_length {
  echo true
  input:
  val x from Channel.from(1,2)
  val y from Channel.from('a','b','c','d')
  
  script:
   """
   echo $x and $y
   """
}
