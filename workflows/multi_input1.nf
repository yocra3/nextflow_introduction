#!/usr/bin/env nextflow

// Exemplify combination of inputs

println("Multiple input channels - same length")

process multi_same_length {
  echo true
  input:
  val x from Channel.from(1,2,3)
  val y from Channel.from('a','b','c')
  
  script:
   """
   echo $x and $y
   """
}
