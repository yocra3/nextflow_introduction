include { CREATETXTPREFIX as CREATETXTPREFIX_1 } from '../modules/createTxtPrefix/main.nf'
include { CREATETXTPREFIX as CREATETXTPREFIX_2 }   from '../modules/createTxtPrefix/main.nf'

include { COMBTXTPREFIX } from '../modules/combTxtPrefix/main.nf'


workflow MERGETXT {

    take:
    file_names

    main:
    txt_ch1 = CREATETXTPREFIX_1(file_names)
    txt_ch2 = CREATETXTPREFIX_2(file_names)

    COMBTXTPREFIX(txt_ch1, txt_ch2)

}