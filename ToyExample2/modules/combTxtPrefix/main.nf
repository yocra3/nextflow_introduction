process COMBTXTPREFIX {
  
  input:
    tuple val (x), file("a.txt") 
    tuple val (y), file("b.txt") 
  
  output:
    path("*comb.txt")
  
  script:
  """
  cat a.txt > ${x}_comb.txt
  cat b.txt >> ${x}_comb.txt
  """
}