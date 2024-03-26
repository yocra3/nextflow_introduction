#!/usr/bin/env nextflow

// Workflow 1. Simple workflow to show main nextflow features
params.greeting  = 'Hello world!'
greeting_ch = Channel.from(params.greeting)

include { TOYEXAMPLE } from './workflows/toyExample.nf'

workflow {
    TOYEXAMPLE(greeting_ch)
}