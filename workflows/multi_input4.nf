#!/usr/bin/env nextflow

// Exemplify combination of inputs

println("Multiple input channels - repeaters")

process repeaters {
  echo true
  input:
  val x from Channel.from(1,2)
  each y from Channel.from('a','b','c')
  
  script:
   """
   echo $x and $y
   """
}