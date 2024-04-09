process COMBTXTTUPLE {
  
  input:
    tuple val (x), file("a.txt"), file("b.txt") 
  
  output:
    path("*comb.txt")
  
  script:
  """
  cat a.txt > ${x}_comb.txt
  cat b.txt >> ${x}_comb.txt
  """
}