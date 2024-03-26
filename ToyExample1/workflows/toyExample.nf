include { SPLITWORDS } from '../modules/splitWords/main.nf'
include { CONVERTTOUPPER } from '../modules/convertToUpper/main.nf'

workflow TOYEXAMPLE {
  take:
  greeting_ch

  main:
  letters_ch = SPLITWORDS(greeting_ch)
  result = CONVERTTOUPPER(letters_ch.flatten())
  result.view{ it.trim() }
}
