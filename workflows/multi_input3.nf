#!/usr/bin/env nextflow

// Exemplify combination of inputs

println("Multiple input channels - value and queue")

process value {
  echo true
  input:
  val x from Channel.value(1)
  val y from Channel.from('a','b','c')
  script:
   """
   echo $x and $y
   """
}