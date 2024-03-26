include { SPLITWORDSPY } from '../modules/splitWordsPy/main.nf'
include { CONVERTTOUPPER } from '../modules/convertToUpper/main.nf'

workflow TOYEXAMPLEPY {
  take:
  greeting_ch

  main:
  letters_ch = SPLITWORDSPY(greeting_ch)
  result = CONVERTTOUPPER(letters_ch.flatten())
  result.view{ it.trim() }
}
