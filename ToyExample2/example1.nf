#!/usr/bin/env nextflow

// Workflow 1. Simple workflow to show main nextflow features
params.file_names  = ['sample1', 'sample2']
file_names = Channel.fromList(params.file_names)

include { CREATETXTGZ } from './workflows/createTxtGz.nf'

workflow {
    CREATETXTGZ(file_names)
}