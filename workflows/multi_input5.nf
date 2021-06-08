#!/usr/bin/env nextflow

// Exemplify combination of inputs

println("Multiple input channels - different order")

process comb1 {
  echo true
  input:
  val x from Channel.from(1,2,3)
  val y from Channel.from('a','b','c')
  output: val "$x and $y" into out
  script:
   """
   echo $x and $y
   """
}
process comb2 {
  echo true
  input:
  val a from out
  val b from Channel.from('A','B','C')
  script:
   """
   echo $a and $b
   """
}
