process CREATETXT {
  
  container "nfcore/base:2.1"

  input:
    val x 
  
  output:
    file '*.txt' 
  
  script:
  """
  echo $x > ${x}.txt
  """
}