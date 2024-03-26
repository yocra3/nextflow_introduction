include { CREATETXT } from '../modules/createTxt/main.nf'
include { COMPRESS } from '../modules/compress/main.nf'


workflow CREATETXTGZ {

    take:
    file_names

    main:
    txt_ch = CREATETXT(file_names)
    gz_ch = COMPRESS(txt_ch)

}