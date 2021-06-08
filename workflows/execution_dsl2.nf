#!/usr/bin/env nextflow

nextflow.enable.dsl=2

// Execution 1. Exemplify how to transform a workflow to dsl2

params.file_names  = ['sample1', 'sample2']
file_names = Channel.fromList(params.file_names)

include { CREATE_FASTQ } from '../modules/execution_modules'
include { CREATE_BAM } from '../modules/execution_modules'
include { CREATE_VCF } from '../modules/execution_modules'

workflow {

  CREATE_FASTQ( file_names )
  CREATE_BAM( CREATE_FASTQ.out.fastq )
  CREATE_VCF( CREATE_BAM.out )

}