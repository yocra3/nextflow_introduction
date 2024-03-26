#!/usr/bin/env nextflow

// Workflow 2. Workflow 1 using python
params.greeting  = 'Hello world!'
greeting_ch = Channel.from(params.greeting)

include { TOYEXAMPLEPY } from './workflows/toyExamplePy.nf'

workflow {
    TOYEXAMPLEPY(greeting_ch)
}