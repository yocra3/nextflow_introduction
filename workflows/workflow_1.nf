#!/usr/bin/env nextflow

// Workflow 1. Simple workflow to show main nextflow features
params.greeting  = 'Hello world!'
greeting_ch = Channel.from(params.greeting)



process convertToUpper {
  
  input:
  file y 
  
  output:
  stdout
  
  script:
  """
  cat $y | tr '[a-z]' '[A-Z]' 
  """

}

workflow {

  letters_ch = splitWords(greeting_ch)
  result = convertToUpper(letters_ch.flatten())
  result.view{ it.trim() }
}
