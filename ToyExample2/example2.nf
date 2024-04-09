#!/usr/bin/env nextflow

// Workflow 1. Simple workflow to show main nextflow features
params.file_names  = ['id1', 'id2']
file_names = Channel.fromList(params.file_names)

include { MERGETXT } from './workflows/mergeTxt.nf'

workflow {
    MERGETXT(file_names)
}