#!/usr/bin/env nextflow

// Workflow 1. Simple workflow to show main nextflow features

params.greeting  = 'Hello world!'
greeting_ch = Channel.from(params.greeting)

process splitLetters {
  
  input:
    val x from greeting_ch
  
  output:
    file '*.txt' into letters
  
  script:
  """
  for word in $x
  do
    echo \$word > \${word}.txt
  done
  """
}

process convertToUpper {
  
  input:
  file y from letters.flatten()
  
  output:
  stdout into result
  
  script:
  """
  toUpper.R $y
  """

}

result.view{ it.trim() }