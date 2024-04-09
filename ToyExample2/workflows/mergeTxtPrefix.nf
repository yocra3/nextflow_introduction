include { CREATETXTPREFIX as CREATETXTPREFIX_1 } from '../modules/createTxtPrefix/main.nf'
include { CREATETXTPREFIX as CREATETXTPREFIX_2 }   from '../modules/createTxtPrefix/main.nf'

include { COMBTXTTUPLE } from '../modules/combTxtTuple/main.nf'


workflow MERGETXTPREFIX {

    take:
    file_names

    main:
    txt_ch1 = CREATETXTPREFIX_1(file_names)
    txt_ch2 = CREATETXTPREFIX_2(file_names)

    txt_comb = txt_ch1.join(txt_ch2)

    COMBTXTTUPLE(txt_comb)

}